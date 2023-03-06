<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.5.0/css/ol.css" type="text/css">
	<script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.5.0/build/ol.js"></script>
    <script type="text/javascript" src="/js/map.js"></script>
    <title>map</title>
  </head>
  
  <body>
    <h2>OpenLayers_MAP</h2>
    <div id="vMap" style="height:800px;width: 100%;"></div>
  </body>
  
  <script type="text/javascript">

 	var container = document.getElementById('popup'); //팝업이 담길 컨테이너 요소
	var content1 = document.getElementById('popup-content'); //팝업 내용 요소
	var map;
	var mapLayer; //맵 레이어 선언 : 지도 그림(타일) 설정
	var mapOverlay; //맵 오버레이 선언 : 지도 위에 팝업 옵션을 사용할 때
	var mapView; //맵 뷰 선언 : 보여지는 지도 부분 설정
	var hover=null; //마우스 이벤트에 사용될 변수
	
	map = new ol.Map({
		target : 'vMap', 
		layers : [
			new ol.layer.Tile({
				source: new ol.source.XYZ({
					url: 'http://api.vworld.kr/req/wmts/1.0.0/310D88CA-D6B5-3A14-A4E8-35B0A763C243/Base/{z}/{y}/{x}.png'	//Vworld Tile 변경
				})
			})
		], 
		view : new ol.View({
			center: [14126669.41589247, 4493404.190498611], 
			zoom: 7, 
			minZoom: 7, 
			maxZoom: 19
		})
	}); 
  </script>
</html>