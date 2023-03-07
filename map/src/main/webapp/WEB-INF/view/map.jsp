<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.5.0/css/ol.css" type="text/css">
	<script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.5.0/build/ol.js"></script>
	<title>map</title>

	<style>
	.__float-tbl{
		border: 1px solid #2a5dc5;
		border-radius: 5px;
		background-color: #2a5dc5;
		font-size: 15px;
		color: white;
		text-align: center;
		position: absolute;
		top: 30px;
		left: -50px;
		width:130px;
	</style>
</head>
<body>
	<h2>OpenLayers_MAP</h2>
	<div id="vMap" style="height: 800px; width: 100%;"></div>
	
	<!-- 지도 위에 팝업이 나타날 부분 -->
	<div id="popup">
		<div id="popup-content"></div>
	</div>
</body>
<script type="text/javascript" src="/js/map.js"></script>
</html>