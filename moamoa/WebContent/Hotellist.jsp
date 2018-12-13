<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="include/include.jsp" %> 
     <%@ include file ="include/header.jsp" %> 
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
	width: 740px;
	height: 200px;
	margin: 18px auto;
	padding-top: 90px;
}

#ser{
	color: white;
	text-align: center;
	font-weight: bold;
	font-size: 30px;
	line-height: 30px;
	padding-bottom: 10px;
}



.box {
	position: relative;
	top: 50%;
	left: 50%;
	width: 700px;
	transform: translate(-50%, -50%);
	margin: 0px;
}

input {
	display: inline-block;
	font-size: 20px;
	box-sizing: border-box;
	transition: .5s;
}

#input-text {
	position: absolute;
	background: #fff;
	width: 600px;
	height: 70px;
	border: none;
	outline: none;
	padding: 0 25px;
}

#input-submit {
	position: absolute;
	right:0px;
	border-radius: 0 5px 5px 0;
	width: 60px;
	height: 70px;
	border: none;
	outline: none;
	cursor: pointer;
	background: #ffc107;
	color: #fff;
}

#input-submit:hover {
	background: #ff5722;
}

#inputGroupSelect01{
	-webkit-appearance: none;
	height: 70px;
	width: 80px; 
	border: none;
	padding-left: 15px;
	border-radius: 5px 0px 0px 5px;
}
#imgbox{
	height: 400px;
	background-image: url(img/1234.JPG);
	background-repeat: no-repeat ;
	background-size: cover;
	background-position: center;
	position: relative;
	top: -18px;
}




input {
	position: relative;
	display: inline-block;
	font-size: 20px;
	box-sizing: border-box;
	transition: .5s;
}


/*호텔 리스트  */
#hotellist{
	width: 50%;
	height: 100%;
	margin: 0px auto;
	margin-bottom: 20px;
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
}

#hotelborder{
	width:100%;
	
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
	height: 100%;
	display: inline-block;
	border-bottom: 1px solid #BDBDBD;
	padding: 10px 10px 20px 10px;
	
}

.title_wrap{
	padding: 20px 0px;
}

#title{
	display: inline-block;
	font-weight: bold;
	font-size: 25px;
	
}


#htl_addr{
	display: inline-block;
	font-size: 10px;
	color: #0283df;
	padding-left: 30px;
}
#content{
	width: 700px;
	height: 100px;
	margin-top: 70px;
	float: right;
}
#content p{
	left: 250px;
	overflow: hidden; 
	line-height: 5pxpx; 
	display: -webkit-box; 
	-webkit-line-clamp: 3; 
	-webkit-box-orient: vertical;
	font-weight: bold;
	font-size: 15px;
	
}
#list_img {
	display: inline-block;
	
}
#list_img > img{
	width: 225px;
	height: 225px;
	border-radius: 50%;
	display: inline-block;
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

#border:hover{
	border-radius: 10px;
	transition: .5s;
	box-shadow: 0px 4px 10px 0 rgba(0, 0, 0, 0.3),
				0px 4px 10px 0 rgba(0, 0, 0, 0.2);	
}

@media(max-width: 700px) {
	#input-text{
		width: 250px;
		font-size: 15px;
	}
	#input-submit{
		left: 330px;
	}
	.box{
		width: 400px;
	}
	
	#search{
		width: 400px;
		margin: 10px auto;
	}
	
	#ser p {
		font-size: 20px;
	}
	#title a{
		text-align: center;
	}
}

@media(max-width: 1200px) {
	
	#title{
		width: 100%;
		padding-left: 30px;
	}
	#htl_addr{
		padding-left: 30px;
	}
	#content{
		width: 100%;
	}	
}

</style>
</head>
<body>	
	<!-- 검색창 -->
	<section id="imgbox">
		<div id="search">
			<div class="box">
			<c:choose>
				<c:when test="${!empty keyword}">
					<div id="ser">
						<p>"${keyword}"관련검색어 ${pageMaker.totalCount}건이 검색되었습니다</p>
					</div>
				</c:when>
					<c:otherwise>
					<div id="ser">
						<p>"서울" 관련검색어 ${pageMaker.totalCount}건이 검색되었습니다</p>
					</div>
					</c:otherwise>
			</c:choose>
				<select name="searchType" class="custom-select" id="inputGroupSelect01" style="width: 120pxl">
					<option value="1">호텔 이름</option>
					<option value="2">호텔 주소</option>
					<option value="3">평점</option>
					<option value="4">단어</option>
				</select>
					<input type="text" name="" placeholder="Hotel Name..." id="input-text">
					<input type="submit" name="" value="GO" id="input-submit">
			</div>
		</div>
	</section>
		
	
	<!--호텔 필터  -->
	<section id="hotellist">
		
	<!--호텔 리스트  -->	
	<c:forEach items="${htlsearchList}" var = "htlDTO">
		<div id="hotelborder">
			<c:choose>	
				<c:when test="${!empty htlDTO.hotelname}">
						<div id="border" OnClick="location.href ='reviewlist.bizpoll?hotelname=${htlDTO.hotelname}'" style="cursor:pointer;">
							<div class="title_wrap">
								<div id="title">
									<a href="#">${htlDTO.hotelname}</a>
								</div>
								<div id="htl_addr">
										<h2>${htlDTO.hoteladdr}</h2>
								</div>
							</div>
							
							<div id="list_img">
								<img src="${htlDTO.hotelimg}"> 
							</div>
							
							<div id="content">
								<p>${htlDTO.summary}</p>
							</div>
						</div>
						
				</c:when>
			</c:choose>	
		
		</div>
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
	
	 $("#input-submit").on("click", function(){
		 	var flag= $("#inputGroupSelect01").val();
		 	var keyword= $("#input-text").val();
		 	
			location.href="searchhtl.bizpoll?flag="+flag+"&keyword="+keyword;
	});
	

});
  


</script>
</html>