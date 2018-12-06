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
body a{
padding: 0;
margin: 0;
text-decoration: none;
list-style: none;
color: black;
}

#search {
	width: 600px;
	height: 100px;
	margin: 10px auto;
}
.box {
	position: relative;
	top: 290%;
	left: 50%;
	width: 500px;
	transform: translate(-50%, -50%);
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
	width:100%;
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


input {
	position: relative;
	display: inline-block;
	font-size: 20px;
	box-sizing: border-box;
	transition: .5s;
}

#input-text {
	background: #fff;
	width: 87%;
	height: 67px;
	border: none;
	outline: none;
	padding: 0 25px;
	border-radius: 5px 0 0 5px;
}

#input-submit {
	position: relative;
	left: -5px;
	border-radius: 0 5px 5px 0;
	width: 66px;
	height: 67px;
	border: none;
	outline: none;
	cursor: pointer;
	background: #ffc107;
	color: #fff;
}

#input-submit:hover {
	background: #ff5722;
}

/*호텔 리스트  */
#hotellist{
	width: 70%;
	height: 100%;
	margin: 0px auto;
	padding-bottom: 40px;
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

#hotelborder{
	width:100%;
	height: 280px;
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
	margin-bottom: 30px;
}
.title_wrap{
	width: 100%;
	height: 70px;
}
#title{
	width: 35%;
	display: inline-block;
}
#title h1{
	padding: 10px 0 0 20px;
	display: inline-block;
}
#htl_addr{
	width: 300px;
	display: inline-block;
	font-size: 12px;
	color: #0283df;
}
#htl_score h2{
	padding: 10px 0 0 20px;
	display: inline-block;

}
#content{
	position:relative;
	height: 220px;
	width: 1000px;
	display: inline-block;
	right: -270px;
	top:74px;
}
#content p{
	overflow: hidden; 
  	text-overflow: ellipsis;
  	white-space: nowrap; 
  	width: 1000px;
  	height: 100px;
	display: inline-block;
	padding-left: 30px;
	white-space: normal; 
	line-height: 1.2; 
	height: 3.6em; 
	text-align: left; 
	word-wrap: break-word; 
	display: -webkit-box; 
	-webkit-line-clamp: 3; 
	-webkit-box-orient: vertical;

}
#list_img{
	position: relative;
	width: 225px;
	height: 225px;
	top: -225px;
	margin-left: 30px;
}

#list_img > img{
	width: 100%;
	height: 100%;
	border-radius: 50%;
}
#img img{
	display: inline-block;
	width: 225px;
	height: 225px;
}

/*pagination */

#pagination {
		text-align: center;	
		margin-bottom: 40px;
		padding: 20px;
		
}	
#pagination a{	
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	    transition: background-color .3s;
	}
	
#pagination a.active {
	    background-color: #757575;
	    color: white;
	    border-radius: 32px;
	}
.pagination a:hover:not(.active) {background-color: #ddd;}
.clr{clear:both;}

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
  background-color: #FF6C6C;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}
</style>
</head>
<body>
	<!-- 검색창 -->
	<section id="imgbox">
		<div id="search">
			<div class="box">
				<form>
					<input type="text" name="" placeholder="Hotel Name..." id="input-text">
					<input type="submit" name="" value="GO" id="input-submit">
				</form>
	
			</div>
		</div>
	</section>
		
	
	<!--호텔 필터  -->
	<section id="hotellist">
		<div id="selectbox">
			<a href="#">select</a>
			<a href="#">select</a>
			<a href="#">select</a>
			<a href="#">select</a>
		</div>
		
	<!--호텔 리스트  -->	
	<c:forEach items="${htlsearchList}" var = "htlDTO">
		<div id="hotelborder">
		
			<c:choose>	
				<c:when test="${empty htlDTO.hotelname}">
				</c:when>
				
				<c:otherwise>
					<div id="border">
						<div class="title_wrap">
							<div id="title">
									<h1><a href="#">${htlDTO.hotelname }</a></h1>
							</div>
							<div id="htl_addr">
									<h2>${htlDTO.hoteladdr }</h2>
							</div>
						</div>
						<div id="content">
							<p>${htlDTO.summary }</p>
						</div>
						
						<div id="list_img">
							<img src="${htlDTO.hotelimg }"> 
						</div>
					</div>
					
					
				</c:otherwise>	
			</c:choose>	
		
		</div>
		<br>
		<br>
		<br>	
		<hr>
	</c:forEach>
		
	</section>
	
	<!--pagination  -->
			<div id="pagination"> <!--pageMakerㅇDTO-->
				<c:if test="${pageMaker.prev}">
					<a href="searchhtl.bizpoll?page=${pageMaker.startPage-1}">&laquo;</a>
				</c:if>
				
				<c:if test="${pageMaker.prev}">
					<a href="searchhtl.bizpoll?page=${pageMaker.firstPage}">${pageMaker.firstPage}</a>
					<a>...</a>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<a href="searchhtl.bizpoll?page=${idx}&flag=${flag}&keyword=${keyword}&key=${code}" <c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>${idx}</a>
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
					<a>...</a>
					<a href="searchhtl.bizpoll?page=${pageMaker.finalPage}">${pageMaker.finalPage}</a>
				</c:if>
				
				<c:if test="${pageMaker.next}">
					<a href="searchhtl.bizpoll?page=${pageMaker.endPage +1}">&raquo;</a>
			    </c:if>
			</div>
			
			<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	
</body>
<%@ include file="include/footer.jsp" %>
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