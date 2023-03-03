<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="http://map.vworld.kr/js/vworldMapInit.js.do?version=2.0&apiKey=310D88CA-D6B5-3A14-A4E8-35B0A763C243"></script>
	<title>Map</title>
</head>
<body>
	<div>테스트</div>
	<div id="vmap" style="width:80%;"></div>
</body>
</html>
<script>	
	vw.ol3.MapOptions = {
		      basemapType: vw.ol3.BasemapType.GRAPHIC
		    , controlDensity: vw.ol3.DensityType.EMPTY
		    , interactionDensity: vw.ol3.DensityType.BASIC
		    , controlsAutoArrange: true
		    , homePosition: vw.ol3.CameraPosition
		    , initPosition: vw.ol3.CameraPosition
		   }; 
		      
		  vmap = new vw.ol3.Map("vmap",  vw.ol3.MapOptions);
</script>