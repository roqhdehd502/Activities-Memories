<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Activities Memories Main</title>
	<!--<link href="../CSS/MainForm.css" rel="stylesheet" type="text/css">-->
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800');
			
		body {
			margin: 0px;
			font-family: 'Nanum Gothic', 'serif';
		}
		
		a {
			text-decoration:none;
		}

		#header {
			padding-top: 15px;
			padding-bottom: 15px;
			width: 100%;
			height: 20px;
			background-color: #17a2b8;
			font-weight: bold;
		}
		
		#header a:link, #footer a:link {
			color: #e7e7de;
		}
		
		#header a:visited, #footer a:visited {
			color: #e7e7de;
		}
		
		#header a:hover, #footer a:hover {
			color: #008891;
		}
		
		#header a:active, #footer a:active {
			color: #0f3057;
		}
		
		.logo {
			padding-left: 20px;
		}
		
		.nav {
			float: right;
		}
		
		.menu {
			color: #e7e7de;
		}
		
		.nav .menu {
			float: left;
			margin-right: 20px;
		}
		
		.dropdown-content {
			display: none;
			position: absolute;
			background-color: #e7e7de;
			min-width: 160px;
			box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  			z-index: 1;
		}
		
		.dropdown-content a {
			color: #0f3057;
			padding: 12px 16px;
			display: block;
		}
		
		.dropdown-content a:link {
			background-color: #17a2b8;
			color: #e7e7de;
		}
		
		.dropdown-content a:hover {
			background-color: #e7e7de;
			color: #17a2b8;
		}
		
		.menu:hover .dropdown-content {
			display: block;
		}
		
		#content {
			margin: 20px;
		}
		
		#footer {
			position: absolute;
			bottom: 0%;
			padding-top: 15px;
			padding-bottom: 15px;
			width: 100%;
			height: 30px;
			background-color: #17a2b8;
			color: #e7e7de;
			font-weight: bold;
			text-align: center;
		}
	</style>
</head>
<body>
	<div id="header">
		<span class="logo"><a href="#">Activities Memories</a></span>
		<div class="nav">
			<span class="menu"><a href="#">File</a>
				<div class="dropdown-content">
				    <a href="#">불러오기</a>
				    <a href="#">내보내기</a>
  				</div>
			</span>
			<span class="menu"><a href="#">Edit</a>
				<div class="dropdown-content">
				    <a href="#">표</a>
				    <a href="#">리스트</a>
  				</div>
			</span>
			<span class="menu"><a href="#">Help</a></span>
		</div>
	</div>

	<div id="content">
		<div>
			logo img<hr>
		</div>
		<div>
			<a href="#">21.01.02 Workout</a>
			<span>Preview...</span>
		</div>
		<div>
			<a href="#">21.01.01 Workout</a>
			<span>Preview...</span>
		</div>
		<div>
			<a href="#">21.12.31 Workout</a>
			<span>Preview...</span>
		</div>
	</div>

	<div id="footer">
		2021 Copyright All rights reserved by NMW<br> <a
			href="https://github.com/roqhdehd502">https://github.com/roqhdehd502</a>
	</div>
</body>
</html>