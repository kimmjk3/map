<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.5.0/css/ol.css" type="text/css">
	<script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.5.0/build/ol.js"></script>
	<link rel="stylesheet" href="/css/map.css" type="text/css">
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
	<title>map</title>
</head>
<body>
	<h2>OpenLayers_MAP</h2>
	<div id="vMap"></div>
	
	<!-- 지도 위에 팝업이 나타날 부분 -->
	<div id="popup">
		<div id="popup-content"></div>
	</div>
	</br>
	<button id='obiz' onClick='move(126.9700, 37.3996)'>오비즈타워</button>
</body>
<script type="text/javascript" src="/js/map.js"></script>
</html>