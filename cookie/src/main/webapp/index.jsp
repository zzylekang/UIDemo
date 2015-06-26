<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->
<script type="text/javascript" src="/cookie/js/cookie_util.js"></script>
<script type="text/javascript" src="/cookie/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
	function addcookie() {
		var cname = $("#cname").val();
		var cvalue = $("#cvalue").val();
		var cexpire = $("#cexpire").val();
		var cpath = $("#cpath").val();
		var cdomain = $("#cdomain").val();
		var csecure = $("#csecure").val();
		
		CookieUtil.addCookie(cname, cvalue, cexpire, cpath, cdomain, csecure);
	}
</script>
</head>
<body>
<h2>Hello World!</h2>

<form>
	cookie name：<input type="text" name="cname" id="cname"/></br>
	cookie value：<input type="text" name="cvalue" id="cvalue"/></br>
	expireHours：<input type="text" name="cexpire" id="cexpire"/></br>
	path：<input type="text" name="cpath" id="cpath"/></br>
	domain：<input type="text" name="cdomain" id="cdomain"/></br>
	secure：<input type="text" name="csecure" id="csecure"/></br>
	<input type="button" value= "add cookie" onclick="addcookie()">
</form>
<div id="cookieList">
	<script type="text/javascript">
		document.write(CookieUtil.getCookie("c1"));
		document.write(CookieUtil.getCookie("c2"));
		document.write(CookieUtil.getCookie("c3"));
		document.write(CookieUtil.getCookie("c4"));
	</script>
</div>
</body>
</html>
