<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<style type="text/css">
body
{
	margin: 0;
	padding: 0;
	font-family: 'Source Sans Pro', sans-serif;
}
nav
{
	height: 70px;
	background: #0097A7;
}
nav #brand {
     float: left;
     display: block;
     margin-left: 84px;
     font-size: 30px;
     line-height: 70px;
}
nav #brand a {
      color: #fff;
      font-family: "Poppins";
      text-decoration: none;
      position: relative;
      top: -1px;
}
.menu
{
	position: relative;
	margin: 0 auto;
	width: 1200px;
	overflow: hidden;
}

.menu ul 
{
	width: 100%;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: space-between;
}

.menu ul li 
{
	list-style: none;
}


.menu ul li ,
.menu ul li  a
{
	color: #fff;
	line-height: 70px;
	text-decoration: none;
}


.menu ul li #logo
{
	font-family: "Poppins";
	font-size: 30px;
	line-height: 70px;
	
}

.menu ul li a.menu-item
{
	transform: scale(1);
	transition: 0.5s;
	display: block;
}
.menu ul li a.menu-item.hide-item
{
	transform: scale(0);
}

.menu ul li:nth-child(2) a.menu-item.hide-item
{
	transition-delay: 0.6s;
}

.menu ul li:nth-child(3) a.menu-item.hide-item
{
	transition-delay: 0.5s;
}


.menu ul li:nth-child(4) a.menu-item.hide-item
{
	transition-delay: 0.4s;
}


.menu ul li:nth-child(5) a.menu-item.hide-item
{
	transition-delay: 0.3s;
}

.menu ul li:nth-child(6) a.menu-item.hide-item
{
	transition-delay: 0.2s;
}

.menu ul li:nth-child(7) a.menu-item.hide-item
{
	transition-delay: 0.1s;
}
.menu ul li:nth-child(8) a.menu-item.hide-item
{
	transition-delay: 0s;
}



.menu ul li:nth-child(2) a.menu-item.menu-item
{
	transition-delay: 0s;
}

.menu ul li:nth-child(3) a.menu-item.menu-item
{
	transition-delay: 0.1s;
}


.menu ul li:nth-child(4) a.menu-item.menu-item
{
	transition-delay: 0.2s;
}


.menu ul li:nth-child(5) a.menu-item.menu-item
{
	transition-delay: 0.3s;
}

.menu ul li:nth-child(6) a.menu-item.menu-item
{
	transition-delay: 0.4s;
}

.menu ul li:nth-child(7) a.menu-item.menu-item
{
	transition-delay: 0.5s;
}

.menu ul li:nth-child(8) a.menu-item.menu-item
{
	transition-delay: 0.6s;
}

.search-form
{
	position: absolute;
	top: 0;
	left: 50%;
	transform: translateX(-90%);
	/*  숫자 -50% */
	width: 600px;
	height: 70px;
	opacity: 0;
	visibility: hidden;
	transition: 0.5s;
}



.search-form.active
{
	opacity: 1;
	visibility:  visible;
	transition-delay:0.5s;

}




.search-form input
{
	width: 100%;
	height: 70px;
	background: transparent;
	color: #fff;
	border: none;
	outline: none;
	font-size: 16px;
}
.search-form input::placeholder
{
	color: #fff;
}
.search-form:before
{
content: "\f002";
  position: absolute;
  top: 24px;
  left: -26px;
  font-size: 18px;
  color: #fff;
  font-family: fontAwesome;
}

.close
{
	position: absolute;
	right: 0;
	top: 0;
	height: 70px;
	background: #0097A7;
	color: #fff;
	line-height: 70px;
	font-size: 18px;
	text-align: right;
	width: 20px;
	cursor: pointer;
	opacity: 0;
	visibility: hidden;
}

.close.active
{
	opacity: 1;
	visibility: visible;
}















</style>
</head>

<body>
	<nav>
		<span id="brand"><a href="index.html">MoAMoA</a></span>
		
		
		<div class="menu">
			<ul>
				<li><a href="#" class="menu-item">menu1</a></li>
				<li><a href="#" class="menu-item">menu2</a></li>
				<li><a href="#" class="menu-item">menu3</a></li>
				<li><a href="#" class="menu-item">menu4</a></li>
				<li><a href="#" class="menu-item">menu5</a></li>
				<li><a href="#" class="menu-item">menu6</a></li>
				<li><a href="#" class="menu-item">Support</a></li>
				<li><a href="#" id="search"><i class="fa fa-search"></i></a></li>
				<li><a href="#"><i class="fa fa-user"></i></a></li>
			</ul>
			<div class="search-form">
				<form>
					<input type="text" name="" placeholder="Search">
				</form>
			</div>
			<a class="close"><i class="fa fa-times"></i></a>
		</div>
	</nav>




	<script src="https://code.jquery.com/jquery-3.3.1.js"
		integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#search').click(function() {
				$('.menu-item').addClass('hide-item');
				$('.search-form').addClass('active');
				$('.close').addClass('active');
				$('#search').hide();
			});
			
			$('.close').click(function() {
				$('.menu-item').removeClass('hide-item');
				$('.search-form').removeClass('active');
				$('.close').removeClass('active');
				$('#search').show();
			});

		});
	</script>



</body>
</html>