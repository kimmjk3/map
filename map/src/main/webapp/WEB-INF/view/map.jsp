<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<title>map</title>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.5.0/css/ol.css" type="text/css">
    <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.5.0/build/ol.js"></script>

	<link rel="stylesheet" href="/css/map.css" type="text/css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/proj4js/2.7.0/proj4.js"></script>
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
	<script type="text/javascript" src="//map.ngii.go.kr/openapi/wmts_ngiiMap_v6.4.3.js?apikey=E353A04D7CBCD533A375EF9471DAE403"></script>
	
</head>
<body>
	<h2>OpenLayers_MAP</h2>
	<div id="vMap"></div>	
	</br>
	<div style="width:100%;display:flex;">
		<div style="width:50%;display:inline-block;margin-left:5%;">
			<div>배경변경</div>
			<div>
				<button class='mapTypeButton btn btn-dark' onClick='changeLayer(baseMapLayer)'>기본지도</button>
				<button class='mapTypeButton btn btn-dark' onClick='changeLayer(grayMapLayer)'>회색지도</button>
				<button class='mapTypeButton btn btn-dark' onClick='changeLayer(midnightMapLayer)'>야간지도</button>
				<button class='mapTypeButton btn btn-dark' onClick='changeLayer(satelliteMapLayer)'>항공지도</button>
			</div>
		</div>
		<div style="width:50%;display:inline-block;margin-left:5%;">
			<div>레이어(ON/OFF)</div>
			<div>
				<button class='mapTypeButton btn btn-dark' onClick='addLcbd100lLayer()'>행정구역경계</button>
				<button class='mapTypeButton btn btn-dark' onClick='addLcbd110lLayer()'>읍면동경계</button>
				<button class='mapTypeButton btn btn-dark' onClick='addLcld170lLayer()'>연속지적도</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="/js/map.js"></script>
<script>
</script>
</html>