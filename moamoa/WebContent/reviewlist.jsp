<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="include/include.jsp" %> 
<%@ include file ="include/header2.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

#hotellist{
	width: 70%;
	height: 1200px;
	margin: 0px auto;
	padding-bottom: 100px;
}
#selectbox{
	width:100%;
	height: 50px;
	background: #FFFFFF;
	padding-top: 50px;
	border-bottom: 1px solid #BDBDBD;
}
#selectbox a{
	color: #757575;
	padding: 0px 20px;
	font-size: 15px;
	line-height: 50px;
/* 	border-bottom: 1px solid #BDBDBD; */
}

.title_box{
	width: 1000px;
}
.title_box h2{
	padding-top: 25px;
	padding-left: 10px;
	font-size: 30px;
	color: #757575;
}
#border{
	width: 100%;
	height: 200px;
}
#title{
	width: 1000px;
	display: inline-block;
}
#title h1{
	padding: 10px 0 0 20px;
	display: inline-block;
}
#content{
	height: 150px;
	width: 1000px;
	display: inline-block;
}
#content p{
	display: inline-block;
	padding-left: 30px;
}
#list_img{
	position: relative;
	width: 225px;
	height: 225px;
	right: -1000px;
	top: -225px;
}
#img img{
	display: inline-block;
	width: 225px;
	height: 225px;
}
#hotelimg{
 width: 100%;
 height: 400px;
 border-bottom: 1px solid #BDBDBD;
}
#hotelimg img{
	width: 250px;
	height: 250px;
	margin-left: 50px;
}
</style>
</head>
<body>
<section id="hotellist">
		<div id="selectbox">
			<a href="#">select</a>
			<a href="#">select</a>
			<a href="#">select</a>
			<a href="#">select</a>
		</div>
		
		<div id="hotelborder">
			<div class="title_box">
				<h2>TITLE</h2>
			</div>
			
			
			<div id="border">
			
				<div id="title">
					<h1>HotelName</h1>
				</div>
				
				<div id="content">
					<p>Content</p>
				</div>
				
				<div id="list_img">
					<img src="${path}/img/login.png"> 
				</div>
			</div>
		</div>
		
		
		<div id="hotelimg">
			<div class="title_box">
				<h2>IMAGE</h2>
			</div>
			<img src="${path}/img/login.png"> 
			<img src="${path}/img/login.png"> 
			<img src="${path}/img/login.png"> 
			<img src="${path}/img/login.png"> 
		</div>
		
		<div id="hotelreview">
			<div class="title_box">
				<h2>DETAIL REVIEW</h2>
			</div>
			
		</div>
		
	</section>
</body>
</html>
<%@ include file= "include/footer.jsp" %>