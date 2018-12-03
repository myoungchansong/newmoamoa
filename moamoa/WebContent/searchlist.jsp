<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="include/include.jsp" %> 
     <%@ include file ="include/header2.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
	
}
#imgbox{
	height: 400px;
	background-image: url(img/1234.JPG);
	background-repeat: no-repeat ;
	background-size: cover;
	background-position: center;
}

#imgbox .box
{
	height: 300px;
	width:90%;
	color: #000;
	margin: 0 auto;
}


#imgbox .box h2{
	
	margin: 0 0 20px;
	padding: 0;
	padding-top: 50px;
	font-size: 48px;
	color: white;
}

#imgbox .box p{
	padding-top: 50px;
	margin: 0 0 20px;
	font-size: 18px;
	color: white;
}


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

#hotelimg{
 width: 100%;
 height: 400px;
}
#hotelimg img{
	width: 250px;
	height: 250px;
	margin-left: 50px;
}
.title_box
{
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
</style>
</head>
<body>
	<section id="imgbox">
		<div class="box">
			<h2> Local Seoul</h2>
			<p>서울특별시(서울特別市)는 대한민국의 수도이자 최대 도시이다. 백제의 첫 수도인 위례성이었고, 고려 때는 남경(南京)이었으며, 조선의 수도가 된 이후로 현재까지 대한민국
			 정치·경제·사회·문화의 중심지 역할을 하고 있다. 도시의 중앙으로 한강이 흐르고, 북한산, 관악산, 도봉산, 불암산, 인능산, 인왕산, 청계산 등의 여러 산들로 둘러싸인 분지
			  지형의 도시이다. 동서 간의 거리는 36.78 km, 남북 간의 거리는 30.3 km이며, 넓이는 605.25 km²이다. 면적은 대한민국 국토의 0.6%이지만, 약 970만 명이 살고 있어서 인구밀도가 높다.
			시청 소재지는 중구이며, 25개의 자치구로 이루어져 있다. 1986년 아시안 게임, 1988년 하계 올림픽, 2010년 서울 G
			20 정상회의를 개최한 국제적인 도시이다. 서울의 GDP는 런던과 파리보다 높은 세계 4위이다.</p>
		</div>
	</section>
		
	
	
	<section id="hotellist">
		<div id="selectbox">
			<a href="#">select</a>
			<a href="#">select</a>
			<a href="#">select</a>
			<a href="#">select</a>
		</div>
	<c:forEach items="${htlsearchList }" var = "htlDTO">
		<div id="hotelborder">
			<div class="title_box">
				<h2>TITLE</h2>
			</div>
			
	
			<div id="border">
			
				<div id="title">
					<h1>${htlDTO.hotelname }</h1>
				</div>
				
				<div id="content">
					<p>Content</p>
				</div>
				
				<div id="list_img">
					<img src="${path}/img/login.png"> 
				</div>
			</div>
		</div>
	</c:forEach>
		<div id="hotelimg">
			<div class="title_box">
				${htlDTO.hotelimg }
			</div>
			<img src="${path}/img/login.png"> 
			<img src="${path}/img/login.png"> 
			<img src="${path}/img/login.png"> 
			<img src="${path}/img/login.png"> 
		</div>
		
	</section>
	
<%@ include file="include/footer.jsp" %>
</body>
</html>