<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" />

</title>
<link rel="stylesheet" type="text/css" href="common.css" />
 <script type="text/javascript" src="js/jchartfx.system.js"></script>
 <script type="text/javascript" src="js/jchartfx.coreVector.js"></script>
 
</head>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-54087735-1', 'auto');
  ga('send', 'pageview');

</script>
<body onload="loadAllChart();checkBrowser();">
<div id="wrap">
<script>
function checkBrowser(){
	 var uagent = navigator.userAgent.toLowerCase();
	 if(uagent.indexOf("msie") != -1) {
		 alert("IE browser is not supported. Please use FireFox, Chrome or Safari");
	 } 
}
</script>

   <div id="main_navigation">
   <tiles:insertAttribute name="menu" /><br/> 
   </div>    
   <tiles:insertAttribute name="body" /><br/>
</div>  
   
</body>
</html>