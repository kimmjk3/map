$(document).ready(function() {
    init();
    //addMarker(126.9700, 37.3996, '오비즈타워');
});

//EPSG:5179 좌표계선언
proj4.defs('EPSG:5179', '+proj=tmerc +lat_0=38 +lon_0=128 +k=1 +x_0=400000 +y_0=600000 +ellps=GRS80 +units=m +no_defs');
ol.proj.proj4.register(proj4);

//map
var map;
var mapView; //맵 뷰 선언 : 보여지는 지도 부분 설정

var baseMapLayer = new ol.layer.Tile({
	title: 'base Map',
	visible: true,
	editable: true,
	source: new ol.source.XYZ(
		{
			url: 'http://api.vworld.kr/req/wmts/1.0.0/310D88CA-D6B5-3A14-A4E8-35B0A763C243/' + 'Base' + '/{z}/{y}/{x}.png'
		})
});

var grayMapLayer = new ol.layer.Tile({
	title: 'gray Map',
	visible: true,
	editable: true,
	source: new ol.source.XYZ(
		{
			url: 'http://api.vworld.kr/req/wmts/1.0.0/310D88CA-D6B5-3A14-A4E8-35B0A763C243/' + 'gray' + '/{z}/{y}/{x}.png'
		})
});

var midnightMapLayer = new ol.layer.Tile({
	title: 'midnigh tMap',
	visible: true,
	editable: true,
	source: new ol.source.XYZ(
		{
			url: 'http://api.vworld.kr/req/wmts/1.0.0/310D88CA-D6B5-3A14-A4E8-35B0A763C243/' + 'midnight' + '/{z}/{y}/{x}.png'
		})
});

var satelliteMapLayer = new ol.layer.Tile({
	title: 'satellite Map',
	visible: true,
	editable: true,
	source: new ol.source.XYZ(
		{
			url: 'http://api.vworld.kr/req/wmts/1.0.0/310D88CA-D6B5-3A14-A4E8-35B0A763C243/' + 'Satellite' + '/{z}/{y}/{x}.jpeg'
		})
});

//행정구역 레이어 생성
var lcbd100lMapLayer;
var a = 0;
function addLcbd100lLayer() {

	if (a == 0) {
		map.addLayer(lcbd100lMapLayer);
		a = 1;
	} else if (a == 1) {
		map.removeLayer(lcbd100lMapLayer);
		a = 0;
	}
}
lcbd100lMapLayer = new ol.layer.Tile({
	title: 'lcbd100l',
	visible: true,
	editable: true,
	zIndex: 100,
	source: new ol.source.TileWMS({
		url: 'http://192.168.0.35:8081/geoserver/jhit/wms', // 1. 레이어 URL
		params: {
			'VERSION': '1.1.0', // 2. 버전
			'LAYERS': 'jhit:lcbd100l', // 3. 작업공간:레이어 명
			'SRS': 'EPSG:5179', // SRID
			'FORMAT': 'image/png' // 포맷
		},
		serverType: 'geoserver',
	})
});

//읍면동경계 레이어 생성
var lcbd110lMapLayer;
var b = 0;
function addLcbd110lLayer() {

	if (b == 0) {
		map.addLayer(lcbd110lMapLayer);
		b = 1;
	} else if (b == 1) {
		map.removeLayer(lcbd110lMapLayer);
		b = 0;
	}
}
lcbd110lMapLayer = new ol.layer.Tile({
	title: 'lcbd110l',
	visible: true,
	editable: true,
	zIndex: 100,
	source: new ol.source.TileWMS({
		url: 'http://192.168.0.35:8081/geoserver/jhit/wms', // 1. 레이어 URL
		params: {
			'VERSION': '1.1.0', // 2. 버전
			'LAYERS': 'jhit:lcbd110l', // 3. 작업공간:레이어 명
			'SRS': 'EPSG:5179', // SRID
			'FORMAT': 'image/png' // 포맷
		},
		serverType: 'geoserver',
	})
});

//연속지적도 레이어 생성
var lcld170lMapLayer;
var c = 0;
function addLcld170lLayer() {

	if (c == 0) {
		map.addLayer(lcld170lMapLayer);
		c = 1;
	} else if (c == 1) {
		map.removeLayer(lcld170lMapLayer);
		c = 0;
	}
}
lcld170lMapLayer = new ol.layer.Tile({
	title: 'lcld170l',
	visible: true,
	editable: true,
	zIndex: 100,
	source: new ol.source.TileWMS({
		url: 'http://192.168.0.35:8081/geoserver/jhit/wms', // 1. 레이어 URL
		params: {
			'VERSION': '1.1.0', // 2. 버전
			'LAYERS': 'jhit:lcld170l', // 3. 작업공간:레이어 명
			'SRS': 'EPSG:5179', // SRID
			'FORMAT': 'image/png' // 포맷
		},
		serverType: 'geoserver',
	})
});

function init() {
    //뷰 생성
    mapView = new ol.View({
        projection: 'EPSG:5179', //좌표계 설정 (EPSG:3857은 구글에서 사용하는 좌표계)
        center: new ol.geom.Point([128.5, 36.1]) //처음 중앙에 보여질 경도, 위도 
            .transform('EPSG:4326', 'EPSG:5179') //4326 -> 5179
            .getCoordinates(), //포인트의 좌표를 리턴함
        zoom: 8,
        minZoom: 8,
        maxZoom: 19
    });

	//맵 생성
	map = new ol.Map({
		target: 'vMap', //html 요소 id
		layers: [baseMapLayer],
		view: mapView
	});
}

//배경지도 레이어 변경
function changeLayer(type) {

	map.removeLayer(baseMapLayer);
	map.removeLayer(grayMapLayer);
	map.removeLayer(midnightMapLayer);
	map.removeLayer(satelliteMapLayer);

	map.addLayer(type);
}

//마커생성(경도, 위도, 이름(마커구분))
var markerLayer;
function addMarker(lon, lat, name) { //경도 위도 이름값(마커들을 구분하기위해)

	// 마커 feature 설정
	var marker = new ol.Feature({
		geometry: new ol.geom.Point(ol.proj.fromLonLat([lon, lat])), //경도 위도에 포인트 설정
		name: name
	});

	// 마커 스타일 설정
	var markerStyle = new ol.style.Style({
		image: new ol.style.Icon({ //마커 이미지
			opacity: 1, //투명도 1=100% 
			scale: 1.2, //크기 1=100%
			src: 'http://map.vworld.kr/images/ol3/marker_blue.png'
		}),
		zIndex: 101
	});

	// 마커 레이어에 들어갈 소스 생성
	var markerSource = new ol.source.Vector({
		features: [marker] //feature의 집합
	});

	// 마커 레이어 생성
	markerLayer = new ol.layer.Vector({
		source: markerSource, //마커 feacture들
		style: markerStyle //마커 스타일
	});

	// 지도에 마커가 그려진 레이어 추가
	map.addLayer(markerLayer);

}

//이동
function move(x, y) {
	map.getView().setCenter(
		new ol.geom.Point([x, y]).transform('EPSG:4326', 'EPSG:5179').getCoordinates()
	);
	map.getView().setZoom(parseInt(16));
}