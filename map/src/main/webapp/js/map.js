//map.js
	var container = document.getElementById('popup'); //팝업이 담길 컨테이너 요소
	var content1 = document.getElementById('popup-content'); //팝업 내용 요소
	var map;
	var mapLayer; //맵 레이어 선언 : 지도 그림(타일) 설정
	var mapOverlay; //맵 오버레이 선언 : 지도 위에 팝업 옵션을 사용할 때
	var mapView; //맵 뷰 선언 : 보여지는 지도 부분 설정
	var hover = null; //마우스 이벤트에 사용될 변수

	function init() {
		//타일생성
		mapLayer = new ol.layer.Tile(
				{
					title : 'vWorld Map',
					visible : true,
					type : 'base',
					source : new ol.source.XYZ(
							{
								url : 'http://api.vworld.kr/req/wmts/1.0.0/310D88CA-D6B5-3A14-A4E8-35B0A763C243/Base/{z}/{y}/{x}.png' //Vworld Tile 변경
							})
				});
		
		mapOverlay = new ol.Overlay(({
			element : container
		})); //Overlay 생성 요소:컨테이너

		//뷰 생성
		mapView = new ol.View({
			projection : 'EPSG:3857', //좌표계 설정 (EPSG:3857은 구글에서 사용하는 좌표계)
			center : new ol.geom.Point([ 128.5, 36.1 ]) //처음 중앙에 보여질 경도, 위도 
			.transform('EPSG:4326', 'EPSG:3857') //GPS 좌표계 -> 구글 좌표계
			.getCoordinates(), //포인트의 좌표를 리턴함
			/* center : [14126669.41589247, 4493404.190498611], */
			zoom : 7,
			minZoom : 7,
			maxZoom : 19
		});

		//맵 생성
		map = new ol.Map({
			target : 'vMap', //html 요소 id
			layers : [ mapLayer ],
			overlays : [ mapOverlay ], //오버레이
			view : mapView
		});
	}