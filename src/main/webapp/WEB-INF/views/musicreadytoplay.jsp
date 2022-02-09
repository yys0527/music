<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="resources/logo.ico">
<link rel="stylesheet" href="resources/css/rdtp.css">
<link rel="stylesheet" href="resources/css/rdtpobj.css">
<script src="resources/js/rdtp.js"></script>
<script src="resources/js/rdtponc.js"></script>
<title>Trifa's Music</title>
</head>
<body style="background-color: #221436;">
	<input type="hidden" name="set" onclick="get(${ra1}, ${ra2}, ${ra3}, ${ra4}, ${ra5}); set();">
	<div id="left">
		<div class="lct lrt">
			<a class="lra" href="" onclick="next(1); return false;">
				<img class="lfpic alpic lrpic" src="" onerror="this.src='resources/mis.png'">
			</a>
		</div>
	</div>
	<div id="selected">
		<div class="sct">
			<div class="pic">
				<img class="alpic alpicbor cepic" src="resources/img/alpic/${aid}" onerror="this.src='resources/mis.png'">
			</div>
			<div class="info">
				<p class="title">${title}</p>
				<p class="album">${atitle}</p>
				<div class="artistdiv">
					<p class="artist">${artist}</p>
				</div>
				<p class="date noselect">${date}</p>
			</div>
			<div class="intro">
				<p class="introcon">${intro}</p>
			</div>
		</div>
	</div>
	<div id="right">
		<div class="rct lrt">
			<a class="lra" href="" onclick="next(2); return false;">
				<img class="ripic alpic lrpic" src="" onerror="this.src='resources/mis.png'">
			</a>
		</div>
	</div>
</body>
</html>