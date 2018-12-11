<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>  
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_list</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	*{
		box-sizing: border-box; 
	}
	#board body,ul{
		margin:0px;
		padding:0px;
	}
	#board ul{
		list-style-type:none;
	}
	#board a{
		text-decoration:none;
	}
	#board_wrap{
	    margin: 1% auto 3%;
	    width: 55%;
	    margin-left: 15%;
	    height: 700px;
	}
	
	/* index */
	#board #con_wrap{
		background-color: white;
		padding-top: 10px;
	}
	#board .index_section{
	    position: relative;
    	width: 100%;
    	min-width: 1200px;
    	padding: 20px 0;
    	box-sizing: border-box;
	}
	#board .section_con{
	    margin-left: auto;
	   	margin-right: auto;
	   	position: relative;
	    max-width: 1200px;
	    min-width: 1200px;
	}	
	#board .index_sec_ul{
		display: flex;
		justify-content: flex-start;
	    text-transform: capitalize;
	    font-size: 15px;
	}
	#board .index_li>a{
	   color: #707473;
	}
	#board .index_li:before{
		content: "/\A0";
    	margin: 0 5px;
    	color: #ccc;
	}
	#board .index_li:last-child{
		cursor: default;
    	pointer-events: none;
    	color: #979797;
	}
	
	/*select */
	.custom-select {
	  position: relative;
	  font-family: Arial;
	  display: inline-block;
	  margin: 10px 0px;
	}
	.custom-select select {
	  display: none; /*hide original SELECT element:*/
	}
	.select-selected {
	  background-color:#212121;
	}
	/*style the arrow inside the select element:*/
	.select-selected:after {
	  position: absolute;
	  content: "";
	  top: 14px;
	  right: 10px;
	  width: 0;
	  height: 0;
	  border: 6px solid transparent;
	  border-color: #fff transparent transparent transparent;
	}
	/*point the arrow upwards when the select box is open (active):*/
	.select-selected.select-arrow-active:after {
	  border-color: transparent transparent #fff transparent;
	  top: 7px;
	}
	/*style the items (options), including the selected item:*/
	.select-items div,.select-selected {
	  color: #ffffff;
	  padding: 4px 16px;
	  border: 1px solid transparent;
	  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
	  cursor: pointer;
	  user-select: none;
	  font-size: 14px;
	}
	/*style items (options):*/
	.select-items {
	  position: absolute;
	  background-color: #212121;
	  top: 100%;
	  left: 0;
	  right: 0;
	  z-index: 99;
	}
	/*hide the items when the select box is closed:*/
	.select-hide {
	  display: none;
	}
	.select-items div:hover, .same-as-selected {
	  background-color: #757575;
	}
	 
	.notice_classify{
		display :inline-block;
	    margin: 10px 5px;
	    text-align: center;
   		line-height: 29px;
	}
	
	#classify_category{
		/* display: inline-block;
	    border: 1px solid #eeee;
	    position: absolute;
	    width: 143px;
	    height: 100px;
	    padding: 5px;
	    left: 388px;
	    top: 260px;
	    background-color: #fffffffc;
	    z-index: 5; */
	}
	.btn_header{
		display: inline-block;
	    float: right;
	    margin: 10px 5px;
	    font-size: 14px;
	    background-color: #212121;
	    width: 61px;
	    height: 32px;
	    text-align: center;
	    line-height: 29px;
	}.btn_header>a{color: white;}
	
	/* 검색  */
.search {
  width: 56px;
  height: 32px;
  background-color: #242628;
  position: relative;
  overflow: hidden;
  transition: all 0.5s ease;
  float: right;
  margin: 10px 5px 0px 0px;
}
.search:before {
  content: '';
  display: block;
  width: 3px;
  height: 100%;
  position: relative;
  background-color: #00fede;
  transition: all 0.5s ease;
}
.search.open {
  width: 270px;
}
.search.open:before {
  height: 14px;
  margin: 9px 0 9px 20px;
  position: absolute;
}
.search-box {
  width: 100%;
  height: 100%;
  box-shadow: none;
  border: none;
  background: transparent;
  color: #fff;
  padding: 3px 40px 3px 27px;
  font-size: 11px;
}
.search-box:focus {
  outline: none;
}
.search-button {
  	width: 45px;
    height: 32px;
    display: block;
    position: absolute;
    right: 0;
    top: 0;
    padding: 6px;
    cursor: pointer;
}
.search-icon {
  width: 17px;
  height: 17px;
  border-radius: 40px;
  border: 3px solid #00fede;
  display: block;
  position: relative;
  margin-left: 5px;
  transition: all 0.5s ease;
}
.search-icon:before {
 	content: '';
    width: 3px;
    height: 4px;
    position: absolute;
    right: -4px;
    top: 9px;
    display: block;
    background-color: #00fede;
    transform: rotate(-45deg);
    transition: all 0.5s ease;
}
.search-icon:after {
  content: '';
  width: 3px;
  height: 4px;
  position: absolute;
  right: -7px;
  top: 12px;;
  display: block;
  background-color: #00fede;
  transform: rotate(-45deg);
  transition: all 0.5s ease;
}
.open .search-icon {
 	margin: 0;
    width: 20px;
    height: 20px;
    border-radius: 60px;
}
.open .search-icon:before {
  transform: rotate(52deg);
  right: 5px;
  top: 6px;
  height: 6px;
}
.open .search-icon:after {
  transform: rotate(-230deg);
  right: 5px;
  top: 3px;
  height: 6px;
}
	#search_line{
	    float: right;	
	    margin-right: 10px;
	}
	#search_ment{
		display: inline-block;
	    font-weight: 400;
	    color: gray;
	    text-align: center;
	    float: right;
	    line-height: 3px;
	    margin-right: 174px;
	}
	.searchpoint{
		display:inline-block;
		font-weight: 600;
		color: red;
	}
	/*board table  */
	table {
	    border-collapse: collapse;
	    width: 100%;
	}
	th{background-color: #20d1d12b;}
	table, tr{
		border: 1px solid #ededed;
		height: 45px;
	}
	.tabletd_title{
		text-align: left;
		padding-left: 10px;
	}
	.tablestyle{
		margin: 0;
	    width: 100%;
	    border: 1px solid #ededed;
	    font-size: 17px;
	  	text-align: center;
	}
	/*pagination */
	#pagination  {
		text-align: center;	
		padding: 40px;
	}
	#pagination a {
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
	.new_time{
		background-color: #FFA7A7;
	    color: white;
	    font-size: 10px;
	    font-weight: 600;
  	 	border: 1px solid #FF5E00;
  	 	border-radius: 5px;
	}
	#btn_search_submit.a{
		display: inline-block;
		width: 100%;
	}
	#select_wrap{
		display: inline-block;
		width: 50px;
		height: 30px;
		background-color: black;
		color: white;
		text-align: center;
    	line-height: 28px;
    	cursor: pointer;
	}
</style>

<script type="text/javascript">
$(document).ready(function(){
	$('.search-button').click(function(){
		var keyword = $("#btn_search").val();
		if(keyword==""){
			$(this).parent().toggleClass('open');
		}	  
	});
	
	 $("#btn_search_submit").after().click(function(){
			var flag = $("#search_category").val();
			var keyword = $("#btn_search").val();
			if(keyword!=""){
				location.href ="boardList.bizpoll?flag="+flag+"&keyword="+keyword;	
				$("#search_ment").css("display","block");
				alert(flag + keyword);
			}
	
		});	 
	 $("#btn_select").after().click(function(){
			var key = $("#new_order_category").val();			
			if(key!=""){
				location.href ="boardList.bizpoll?key="+key;	
				alert(key);				
			}
	});
	 
 });
 

</script>
<script type="text/javascript">
</script>
</head>
<body id="board">
	<div id="board_wrap">
	
		<div id="con_wrap">
			<section class="index_section">
				<div class="section_con">
					<ul class="index_sec_ul">
						<li class="index_li"><a href="#">COMMUNITY</a></li>
						<li class="index_li"><a href="#">자유게시판</a></li>
					</ul>
				<c:if test="${!empty keyword}">
					<div id="search_ment">"<span class="searchpoint">${keyword}</span>
					키워드로 총<span class="searchpoint">${pageMaker.totalCount}</span>건 검색되었습니다."</div>
				</c:if>
				</div>
			</section>
		</div>
		
		<form action="" id="board_frm">
			<div class="custom-select" style="width:100px;">
				<select id="category_btn" name="category_btn">
					<option>분류</option>
					<option value="info">정보</option>
					<option value="detail">상세리뷰</option>
					<option value="joke">잡담</option>
				</select>
			</div>
			
			<div class="custom-select" style="width:100px;">
				<select id="new_order_category">
					<option>정렬</option>
					<option value="new" id="new_order">최신순</option>
					<option value="cnt">조회순</option>
					<option value="reply">댓글순</option>
					<option value="good">추천순</option>
				</select>
			</div>
			<div id="select_wrap">
				 <span id="btn_select">조회</span>
			</div>
			
			<c:choose>
				<c:when test="${empty sessionScope.loginUser}">
					<div class="btn_header">
						<a href="login.bizpoll" id="write_btn">글쓰기</a>		
					</div>
				</c:when>
				<c:otherwise>
					<div class="btn_header">
						<a href="boardregist.bizpoll" id="write_btn">글쓰기</a>		
					</div>
				</c:otherwise>
			</c:choose>
			
			<div class="btn_header">
				<a href="boardList.bizpoll" id="alllist_btn">목록</a>		
			</div>
			<!--검색 -->
			<div class="search">
			  <input type="search" class="search-box" id="btn_search"/>
			  <span class="search-button">
			    <span id="btn_search_submit"><span class="search-icon"></span></span>
			  </span>
			</div>
			<div id="search_line" class="custom-select" style="width:100px;">
				<select id="search_category">
					<option selected="selected" value="3">조건선택</option>
					<option value="1">제목</option>
					<option value="2">내용</option>
					<option value="3">제목+내용</option>	
					<option value="4">작성자</option>
				</select>
			</div>
			
			
			<div id="notice_container">
				<table class="tablestyle">
				  <thead>
					  <tr>
					    <th>번호</th>
					    <th>분류</th>
					    <th>제목</th> 
					    <th>글쓴이</th>
					    <th>날짜</th>
					    <th>조회수</th>
					    <th>추천수</th>
					  </tr>
				  </thead>
				  <tbody>
				  	<c:forEach items = "${boardList}" var="bDto">
					  	<fmt:formatDate value="${today}" pattern="yy-MM-dd" var="today2"/>
						<fmt:formatDate value="${bDto.regdate}" pattern="yy-MM-dd" var="regdate2"/>
					  	<tr>
					  		<td>${bDto.bno}</td>
					  		<td>정보</td>
					  		<td class="tabletd_title"><a href="boardViewcnt.bizpoll?bno=${bDto.bno}">${bDto.title}</a>
					  			<c:if test="${today2== regdate2}">
					  				<span class = "new_time">New</span>
					  			</c:if>
					  			<c:if test="${bDto.filesize >0}"><i class="fa fa-paperclip"></i></c:if>
						    	<c:if test="${bDto.replycnt >0}">
						    		[${bDto.replycnt}]
						    	</c:if>
					  		</td>
					  		<td>${bDto.nik}</td>
					  		<td>
						  		<c:choose>
						  			<c:when test="${today2 == regdate2}">
						  				<fmt:formatDate pattern="HH:mm:ss" value="${bDto.regdate}"/>
						  			</c:when>
						  			<c:otherwise>
						  				<fmt:formatDate pattern="yy-MM-dd" value="${bDto.regdate}"/>
						  			</c:otherwise>
						  		</c:choose>
					  		</td>
					  		<td>${bDto.viewcnt}</td>
					  		<td>${bDto.goodcnt}</td>
					  	</tr>
				  	</c:forEach>					  	
				  </tbody>
				</table>
			</div>
			
			<!--pagination  -->
			<div id="pagination"> <!--pageMakerDTO-->
				<c:if test="${pageMaker.prev}">
					<a href="boardList.bizpoll?page=${pageMaker.startPage-1}">&laquo;</a>
				</c:if>
				<c:if test="${pageMaker.prev}">
					<a href="boardList.bizpoll?page=${pageMaker.firstPage}">${pageMaker.firstPage}</a>
					<a>...</a>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<a href="boardList.bizpoll?page=${idx}&flag=${flag}&keyword=${keyword}&key=${code}" <c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>${idx}</a>
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
					<a>...</a>
					<a href="boardList.bizpoll?page=${pageMaker.finalPage}">${pageMaker.finalPage}</a>
				</c:if>
				
				<c:if test="${pageMaker.next}">
					<a href="boardList.bizpoll?page=${pageMaker.endPage +1}">&raquo;</a>
			    </c:if>
			</div>
			<div class="clr"></div>
		</form>
	</div>

</body>
<script type="text/javascript" src="${path}/js/selecttag.js"></script>
<script type="text/javascript">
	$(document).on("click", "#new_order", function(){
		 alert("test");
		 console.log("szzz");
	});
</script>
</html>
<%@ include file = "../include/footer.jsp" %> 