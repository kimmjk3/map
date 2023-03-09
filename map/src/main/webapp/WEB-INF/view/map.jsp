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
	<div style="width:100%;display:flex;">
		<div style="width:50%;display:inline-block;margin-left:5%;">
			<div>레이어 변경</div>
			<div>
				<button class='mapTypeButton btn btn-primary' onClick='changeLayer(baseMapLayer)'>기본지도</button>
				<button class='mapTypeButton btn btn-primary' onClick='changeLayer(grayMapLayer)'>회색지도</button>
				<button class='mapTypeButton btn btn-primary' onClick='changeLayer(midnightMapLayer)'>야간지도</button>
			</div>
		</div>
		<div style="width:50%;display:inline-block;margin-left:5%;">
			<div>마커생성</div>
			<div>
				<button class='mapTypeButton btn btn-primary' onClick='addMarker(126.9700, 37.3996, "오비즈타워")'>오비즈타워</button>
				<button class='mapTypeButton btn btn-primary'>#</button>
				<button class='mapTypeButton btn btn-primary'>#</button>
			</div>
		</div>
	</div>
	</br>
	<div style="width:100%;display:flex;">
		<div style="width:50%;display:inline-block;margin-left:5%;">
			<div>이동</div>
			<div>
				<button class='mapTypeButton btn btn-primary' onClick='move(126.9700, 37.3996)'>오비즈타워</button>
				<button class='mapTypeButton btn btn-primary'>#</button>
				<button class='mapTypeButton btn btn-primary'>#</button>
			</div>
		</div>
		<div style="width:50%;display:inline-block;margin-left:5%;">
			<div>#</div>
			<div>

			</div>
		</div>
	</div>
	</br>
</body>
<script type="text/javascript" src="/js/map.js"></script>
</html>