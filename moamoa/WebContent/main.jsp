<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/include.jsp"%>
<%@ include file="include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	text-decoration: none;
	list-style: none;
	font-family: sans-srif;
}

body {
	background: #00BCD4;
}

#mainimg {
	height: 200px;
	width: 200px;
	margin: 0px auto;
	display: block;
	margin-top: 50px;
}

#moa {
	color: white;
	font-size: 50px;
	font-weight: 500px;
	text-align: center;
	font-family:
}

#mapimg {
	height: 300px;
	width: 400px;
	margin: 50px auto;
	display: block;
}

/*===========seach===============================================  */
#search {
	width: 600px;
	height: 100px;
	margin: 10px auto;
}

.box {
	position: relative;
	top: 50%;
	left: 50%;
	width: 500px;
	transform: translate(-50%, -50%);
}

input {
	position: relative;
	display: inline-block;
	font-size: 20px;
	box-sizing: border-box;
	transition: .5s;
}

#input-text {
	background: #fff;
	width: 430px;
	height: 50px;
	border: none;
	outline: none;
	padding: 0 25px;
	border-radius: 5px 0 0 5px;
}

#input-submit {
	position: relative;
	left: -5px;
	border-radius: 0 5px 5px 0;
	width: 60px;
	height: 50px;
	border: none;
	outline: none;
	cursor: pointer;
	background: #ffc107;
	color: #fff;
}

#input-submit:hover {
	background: #ff5722;
}

.mapArea {
	width: 300px;
	height: 300px;
	background: #00BCD4;
	margin: 0 auto;
}

#locName {
	width: 100px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: #00BCD4;
	font-weight: bold;
	color: white;
	float: right;
}

.wrapper {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	grid-gap: 10px;
	grid-auto-rows: minmax(100px, auto);
}

.one {
	grid-column: 1;
	grid-row: 1;
}

.two {
	grid-column: 2/4;
	grid-row: 1/3;
}

#More {
	grid-column: 3/4;
	grid-row: 1/3;
	width: 600px;
	height: 898px;
	background: #0097A7;
}

.three {
	grid-column: 1;
	grid-row: 2/5;
}

.three-1 {
	grid-column: 1;
	grid-row: 4;
}

.four {
	grid-column: 3;
	grid-row: 3;
}

.five {
	grid-column: 2;
	grid-row: 4;
}

.six {
	grid-column: 3;
	grid-row: 4;
	width: 100%;
	height: 100%;
	background: #0097A7;
	line-height: 755px;
	text-align: center;
	font-size: 100px;
	font-weight: bold;
	color: white;
}

#teamlogo {
	grid-column: 1;
	grid-row: 4;
}

#qwer-1 {
	grid-column: 1;
	grid-row: 1/2;
}

section {
	margin-top: 20px;
}

#logo {
	background: #0097A7;
	color: white;
	font-size: 50px;
	font-weight: bold;
	text-align: center;
	line-height: 749px;
	height: 749px
}

#More img {
	width: 100%;
	height: 100%;
}

#teamlogo img {
	width: 100%;
	height: 100%;
}

#seoul {
	/* 	text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; */
	color: white;
	font-size: 60px;
	font-weight: bold;
	padding: 0px 0px 50px 150px;
	outline: black;
}
.img_collection_title{
width:20%;
margin: 20px;
margin-left:210px;
font-weight: 400;
font-size: 23px;
padding: 0.5% 0 0.5% 2%;
color: #555555c9;
background-image: linear-gradient(to right , rgba(255,255,255,0.8), rgba(189,189,189,0.4));
}


/*이미지 grid 디자인  */

#img_section{
width: 100%;
padding-left: 11%;
margin-bottom: 50px;
}
.row {
	width:100%;
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	padding: 0 4px;
	margin: 0 auto;
}

.column {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
	max-width: 25%;
	padding: 0 7px;
}

.column img {
	
	vertical-align: middle;
	width: 100%;
}

@media screen and (max-width: 800px) {
	.column {
		flex: 50%;
		max-width: 50%;
	}
}

@media screen and (max-width: 600px) {
	.column {
		-ms-flex: 100%;
		flex: 100%;
		max-width: 100%;
	}
}

.edited_img{
	background-color: #eeeeeed4;
}


/*이미지 hover css디자인  */
.img_hover_wrapper{
position: relative; 
max-width: 800px; 
margin: 0 auto; 
margin-top: 12px;

}


.img_hover_wrapper:hover .overlay{
height: 100%;/*hover창 높이 조절  */

}
.overlay{
position: absolute;
bottom: 0;
left: 0;
right: 0;
background: rgba(0, 0, 0, 0.5); 
overflow: hidden;
width: 100%;
height: 0;
transition: .5s ease;
}

.img_content{
color: white;
font-size: 20px;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%, -50%);
text-align: center;
 }

/*top button  */

#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: white;
  color: #00BCD4;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}

</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"
	type="text/javascript" charset="utf-8"></script>

</head>
<body>
	<div>
		<img src="${path}/img/main.png" id="mainimg">
		<div id="moa">MoAMoA</div>
	</div>


	<div id="search">
		<div class="box">
			<form>
				<input type="text" name="" placeholder="Type..." id="input-text">
				<input type="submit" name="" value="GO" id="input-submit">
			</form>

		</div>
	</div>


	<div id="map">
		<div class="mapArea">
			<div id="locName"></div>
			<div id="paper"></div>
		</div>
	</div>
	
	<div class="img_collection_title">
		
		<h3>서울 주요 여행지</h3>
	
	</div>
	

<!--메인 페이지 이미지 모음  -->
 <section id="img_section">
	<div class="row">
	
	<!--첫번째 컬럼  -->
		<div class="column">
		 	<div class="img_hover_wrapper">
				<img class="img-responsive" src="seoulimg/lottetower.jpg">
				<div class="overlay">
					<div class="img_content" style="flex: 25%;">
				 		<h1>롯데월드타워</h1>
				 		<p>서울 송파구</p>
				 	</div>
			 	</div>
		  	</div>
		  	
		  	<div class="img_hover_wrapper">
				<img class="img-responsive" src="seoulimg/002.PNG">
				<div class="overlay">
					<div class="img_content" style="flex: 25%;">
				 		<h1>충무로</h1>
				 		<p>서울 중구</p>
				 	</div>
			 	</div>
			</div>
			
			<div class="img_hover_wrapper">
				<img src="seoulimg/hanok_vilege.jpg">
				<div class="overlay">
					<div class="img_content" style="flex: 25%;">
				 		<h1>서울 한옥 마을</h1>
				 		<p>서울 종로구</p>
				 	</div>
			 	</div>
			</div>	
			<div class="img_hover_wrapper">
				<a href="http://korean.visitseoul.net/index">
				<img class="edited_img" src="seoulimg/seoul_net_logo_edited.png" style="width: 100%;"></a>
			</div>
		 </div><!--column end  -->	
		 <!--두번째 컬럼  -->	
		<div class="column">
			<div class="img_hover_wrapper">
				<img src="seoulimg/003.PNG">
				<div class="overlay">
					<div class="img_content" style="flex: 25%;">
				 		<h1>서울 홍대 거리</h1>
				 		<p>서울 마포구</p>
				 	</div>
			 	</div>
			</div>
			
			<div class="img_hover_wrapper">
				<img src="seoulimg/moa.PNG">
			</div>	
			
			<div class="img_hover_wrapper">
				<img src="seoulimg/festival2.PNG">
				<div class="overlay">
					<div class="img_content" style="flex: 25%;">
				 		<h1>여의도</h1>
				 		<p>영등포구</p>
				 	</div>
			 	</div>
			</div>	
		</div><!--column end  -->
		
		<!--세번째 컬럼  -->
		<div class="column">
			<div class="img_hover_wrapper">
				<img src="seoulimg/009.PNG">
				<div class="overlay">
					<div class="img_content" style="flex: 25%;">
				 		<h1>한강 국회의사당</h1>
				 		<p>서울 여의도구</p>
				 	</div>
			 	</div>
			</div>	
			
			<div class="img_hover_wrapper">
				<img src="seoulimg/004.PNG">
				<div class="overlay">
					<div class="img_content" style="flex: 25%;">
				 		<h1>경복궁</h1>
				 		<p>서울 종로구</p>
				 	</div>
			 	</div>
			</div>
			
			<div class="img_hover_wrapper">	
				<img src="seoulimg/namsan.jpg">
				<div class="overlay">
					<div class="img_content" style="flex: 25%;">
				 		<h1>서울 남산</h1>
				 		<p>서울 용산구</p>
				 	</div>
			 	</div>
			</div>	
			
		</div><!--column end  -->
	</div><!--row end  -->	
</section>
<!--메인페이지 이미지 모음 끝  --> 

<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>



	<%@ include file="include/footer.jsp"%>
</body>
<script type="text/javascript" src="js/seoulmap.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$("#myBtn").css("display" , "none");
	
		$(window).scroll(function() {
		if($(document).scrollTop() > 20){
		$("#myBtn").css("display" , "block");
		}else{
		$("#myBtn").css("display" , "none");
		}
		});
	
		$(document).on("click" , "#myBtn" , function() {
		/* $(document).scrollTop(0); */
		$("html , body" ).animate({scrollTop: 0} , 1000);
		});
	
		});
		
</script>
</html>
