<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="include.jsp" %> 
   <%--  <%
		String path =request.getContextPath(); //컨텍스트 경로
	%> --%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

     <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900" rel="stylesheet">
<style type="text/css">
	
* {
      margin: 0;
      padding: 0;
      text-decoration: none;
      list-style: none;
}
 
.content {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
}
 
.content h1 {
      color: #fff;
      font-family: "Poppins";
      font-weight: 200;
      font-size: 40px;
}
 
nav {
      width: 100%;
      background:#0097A7;
      height: 70px;
      position: static;
      z-index: 1;
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
      transition: all 0.3s ease-out;
      font-family: "Poppins";
}
 
nav #menu {
      float: left;
      left: 50%;
      position: relative;
      background: #0097A7;
}
 
nav #menu li {
      display: inline-block;
      padding: 0px 30px;
      cursor: pointer;
      line-height: 70px;
      position: relative;
      transition: all 0.3s ease-out;
}
 
nav #menu li a {
      color: #fff;
      font-weight: bold;
}
 
#toggle {
      position: absolute;
      right: 20px;
      top: 14px;
      z-index: 999;
      width: 40px;
      height: 40px;
      cursor: pointer;
      float: right;
      transition: all 0.3s ease-out;
      visibility: hidden;
      opacity: 0;
}
 
#toggle .span {
      height: 3px;
      background: #fff;
      transition: all 0.3s ease-out;
      backface-visibility: hidden;
      margin: 5px auto;
}
 
#toggle.on #one {
      transform: rotate(45deg) translateX(2px) translateY(4px);
}
 
#toggle.on #two {
      opacity: 0;
}
 
#toggle.on #three {
      transform: rotate(-45deg) translateX(8px) translateY(-10px);
}
 
#resize {
      z-index: 1;
      top: 0px;
      position: absolute;
      background: #000;
      width: 100%;
      height: 100%;
      visibility: hidden;
      opacity: 0;
      transition: all 1s ease-out;
      display: table;
}
 
#resize #menu {
      height: 90px;
      display: table-cell;
      vertical-align: center;
      height: 100%;
}
 
#resize #menu li {
      display: block;
      text-align: center;
      padding: 20px 0;
      font-size: 50px;
      min-height: 50px;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.3s ease-out;
}
 
#resize li:nth-child(1) {
      margin-top:140px;
}
 
#resize #menu li a {
      color: #fff;
}
 
#resize.active {
      visibility: visible;
      opacity: 0.99;
}
 
 
@media(max-width: 768px) {
      #toggle {
            visibility: visible;
            opacity: 1;
            margin-top: 6px;
      }
 
      nav #brand {
            margin-left: 18px;
      }
 
      #menu a {
            font-family: "Poppins";
            font-weight: 200;
            font-size: 20px;
      }
 
      nav #menu {
            display: none;
      }
}
 
@media(min-width: 768px) {
      #resize {
            visibility: hidden !important;
      }
}
	
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		$("#toggle").click(function() {

			$(this).toggleClass('on');
			$("#resize").toggleClass("active");
		});
	});
</script>
</head>
<body>
	<nav>
		<span id="brand">
			<a href="index.bizpoll" style="font-weight: bold;">MoAMoA</a>
		</span>
		
		<ul id="menu">
			<li><a href="searchhtl.bizpoll">ALL</a></li>
			<li><a href="boardList.bizpoll">COMMUNITY</a></li>
			
			
				<c:choose> 
					<c:when test="${empty sessionScope.loginUser}">
						<li><a href="member.bizpoll">SIGN UP</a></li>
						<li><a class ="active" href="login.bizpoll">LOG IN</a></li>	
					</c:when>
					<c:otherwise>
						<li>
						<%-- <a href="#">${sessionScope.loginUser.nik}(${sessionScope.loginUser.id})</a> --%>
						<a href="update.bizpoll"><i class="fa fa-user"></i></a>
						</li>
						<li><a  class ="active" href="logout.bizpoll">LogOut</a></li>
						
					</c:otherwise>
						
				</c:choose>
			
			
			
			
			
		</ul>
		
		<div id="toggle">
			<div class="span" id="one"></div>
			<div class="span" id="two"></div>
			<div class="span" id="three"></div>
		</div>
	</nav>
	
	<div id="resize">
		<ul id="menu">
			<li><a href="searchhtl.bizpoll">HOME</a></li>
			<li><a href="searchhtl.bizpoll">ALL</a></li>
			<li><a href="boardList.bizpoll">COMMUNITY</a></li>
			<c:choose> 
					<c:when test="${empty sessionScope.loginUser}">
						<li><a href="member.bizpoll">SIGN UP</a></li>
						<li><a class ="active" href="login.bizpoll">LOG IN</a></li>	
					</c:when>
					<c:otherwise>
						<li>
						<%-- <a href="#">${sessionScope.loginUser.nik}(${sessionScope.loginUser.id})</a> --%>
						<a href="update.bizpoll"><i class="fa fa-user"></i></a>
						</li>
						<li><a  class ="active" href="logout.bizpoll">LogOut</a></li>
					</c:otherwise>
				</c:choose>
		</ul>
	</div>
	
	
</body>
</html>