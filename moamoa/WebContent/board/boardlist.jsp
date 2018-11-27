<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
	*{
		box-sizing:inherit; 
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
    	margin: 180px auto 30px;
    	width:60%;
	}
	
	/*select */
	.custom-select {
	  position: relative;
	  font-family: Arial;
	}
	.custom-select select {
	  display: none; /*hide original SELECT element:*/
	}
	.select-selected {
	  background-color: DodgerBlue;
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
	  padding: 8px 16px;
	  border: 1px solid transparent;
	  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
	  cursor: pointer;
	  user-select: none;
	}
	/*style items (options):*/
	.select-items {
	  position: absolute;
	  background-color: DodgerBlue;
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
	  background-color: rgba(0, 0, 0, 0.1);
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
	    font-size: 17px;
	    background-color: #212121;
	    width: 61px;
	    height: 32px;
	    text-align: center;
	    line-height: 29px;
	}.btn_header>a{color: white;}
	/*board table  */
	table {
	    border-collapse: collapse;
	    width: 100%;
	}
	table, tr{
		border: 1px solid #ededed;
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
		padding: 20px;
	}
	#pagination a {
	    color: black;
	    float: left;
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
</style>

</head>
<body id="board">
	<div id="board_wrap">
		<form action="" id="board_frm">
			<div class="custom-select" style="width:100px;">
				<select >
					<option>분류</option>
					<option>정보</option>
					<option>상세리뷰</option>
					<option>잡담</option>
				</select>
			</div>
								
			
			
			<div class="custom-select" style="width:100px;">
				<select>
					<option>정렬</option>
					<option>최신순</option>
					<option>조회순</option>
					<option>댓글순</option>
					<option>추천순</option>
				</select>
			</div>
			
					
			
			<div class="btn_header">
				<a href="" id="write_btn">쓰기</a>		
			</div>
			<div class="btn_header">
				<a href="" id="search_btn">검색</a>		
			</div>
			<div class="btn_header">
				<a href="" id="alllist_btn">목록</a>		
			</div>
			<div id="notice_container">
				<table class="tablestyle">
				  <thead>
					  <tr>
					    <th>번호</th>
					    <th>제목</th> 
					    <th>글쓴이</th>
					    <th>날짜</th>
					    <th>조회수</th>
					    <th>추천수</th>
					  </tr>
				  </thead>
				  <tbody>
				  	<tr>
				  		<td>1</td>
				  		<td>ㅋㅋㅋㅋㅋㅋ</td>
				  		<td>글쓴이냣</td>
				  		<td>11.29</td>
				  		<td>4</td>
				  		<td>1</td>
				  	</tr>
				  	<tr>
				  		<td>2</td>
				  		<td>잠온다 ㅋㅋㅋㅋ</td>
				  		<td>잠만보</td>
				  		<td>11.29</td>
				  		<td>4</td>
				  		<td>1</td>
				  	</tr>	
				  	<tr>
				  		<td>3</td>
				  		<td>ㅋㅋ눈사람만들고싶다ㅋ</td>
				  		<td>올라프</td>
				  		<td>11.29</td>
				  		<td>4</td>
				  		<td>1</td>
				  	</tr>	
				  	<tr>
				  		<td>4</td>
				  		<td>혁신적인 또라이닷!</td>
				  		<td>도비</td>
				  		<td>11.29</td>
				  		<td>4</td>
				  		<td>1</td>
				  	</tr>					  	
				  </tbody>
				</table>
			</div>
			
			<!--pagination  -->
			<div id="pagination">
			  <a href="#">&laquo;</a>
			  <a href="#">1</a>
			  <a class="active" href="#">2</a>
			  <a href="#">3</a>
			  <a href="#">4</a>
			  <a href="#">5</a>
			  <a href="#">6</a>
			  <a href="#">&raquo;</a>
			</div>
			<div class="clr"></div>
		</form>
	</div>

</body>
<script type="text/javascript" src="../js/selecttag.js"></script>
</html>
<%@ include file = "../include/footer.jsp" %> 