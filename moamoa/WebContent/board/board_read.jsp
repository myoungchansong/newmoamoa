<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>  
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>board_read</title>
<style type="text/css">
	#boardread_wrap{
		border: 1px solid #e5e5e5;
    	background: #fff;
    	width: 55%;
    	margin: 4% 0 0% 14%;
	}
	#read_header{
	    display: block;
    	position: relative;
    	padding: 0;
   		background: #fff;
   		clear: both;
	}
	#read_title>h2{
		padding: 24px 16px 5px;
    	line-height: 1;
	}
	#read_title>h2>span{
		color: black;
		font-weight: bold;
    	font-size: 12px;
        display: block;
    	margin-bottom: 4px;
	}
	#br_title{
		display:inline-block;
	    color: #444;
	    font-weight: 500;
	    font-size: 18px;
	    line-height: 1.5;
	    padding: 0 0 10px 8px;
	}
	#read_condition{
		padding: 12px 16px;
    	background: #e3eeefd9;
    	display: block;
    	position: relative;
    	clear: both;
	}
	#rd_witer{
		margin-bottom: 3px;
	    line-height: 1.4;
	    font-weight: 600;
	    letter-spacing: 0.2px;
	    color: #555;
	    display:inline-block; 
	}
	div.divider{
	    height: 2px;
	    width: 2px;
	    background: #d5d5d5;
	    margin: 0 1px 3px;
	    display: inline-block;
	}
	#read_condition span{
	    padding: 0;
	    font-size: 12px;
	    color: #777;
	}
	#read_content{
		padding: 16px;
	    display: block;
   		position: relative;
        clear: both;
	}
	#bcontent{
		color: black;
		font-size: 15px;
		padding: 8px 0 0 10px;
	}
	.vote{
		text-align: center;
	}
	.vote>.vb-red{
		color: #fff;
	    background-color: #272727;
	    border-color: #fff;	
	}
	.vote>.vb-btn{
		display: inline-block;
	    padding: 9px 15px;
	    margin-bottom: 0;
	    font-size: 15px;
	    font-weight: 400;
	    line-height: 1.42857143;
	    text-align: center;
	    white-space: nowrap;
	    vertical-align: middle;	
	    touch-action: manipulation;
	    cursor: pointer;
	    user-select: none;
	    background-image: none;
	    border: 1px solid transparent;
	    border-radius: 1px;
	    border-collapse: collapse;
	}
	.good{display:inline-block;}
	.fa{
	    display: inline-block;
	    font: normal normal normal 14px/1 FontAwesome;
	    font-size: inherit;
	    text-rendering: auto;
	    -webkit-font-smoothing: antialiased;
	}
	.fa-heart:before{content:"\f004";}
	.navigation{
	 	margin: 12px 14%;
	    padding: 0;
	    display: block;
	    position: relative;
	    width: 55%;
	}
	.navigation a{
	    display: inline-block;
	    background: #fff;
	    border: 1px solid #e5e5e5;
	    height: 44px;
	    line-height: 44px;
	    padding: 0 16px;
	    font-size: 12px;
	    cursor: pointer;
	    color: #666;
	    position: relative;
	    float: right;
	    transition: all .2s ease;
	    text-decoration: none;	
	    margin-top: 7px;
        margin-left: 2px;
	}
	.navigation>a>i{
		margin-left: 12px;
		font-size: 16px;
	    color: #aaa;
	    vertical-align: -1px;	
	}
	.ion-ios-arrow-right:before{content: "\f3d3";}
	.ion-ios-list-outline:before{content: "\f453";}
	.ion-ios-arrow-left:before{content: "\f3d2";}
	.clear{clear: both;}
	
	/*댓글*/
	.rpwrap{
		width: 55%;
	    height: 300px;
	    border: 1px solid #e5e5e5;;
	    margin: 1% 0 0 14%;
	}
	#reply_header{
		width: 96.7%;
	    height: 44px;
	    line-height: 44px;
	    background: #fafafa;
	    border: 1px solid #e5e5e5;
	    padding: 0 16px;
	    font-size: 13px;
	}
	#reply_list{
		padding: 12px 16px;
    	border-bottom: 1px solid #f1f1f1;
	}
	.rpcontent{
		position: relative;
	}
	#br_num{
		display: inline-block;
		padding-left: 20px;
	}
	#btn_update{
		display: inline-block;
	    background-color: white;
	    border: none;
	    height: 30px;
	    width: 45px;
	    cursor: pointer;
	    border-radius: 10px;
	    outline: none;
	}
	#btn_delete{
		display: inline-block;
	    background-color: white;
	    border: none;
	    height: 30px;
	    width: 45px;
	    cursor: pointer;
	    border-radius: 10px;
	    margin-left: 4px;
	    outline: none;
	}
	#sec_attach{
		display: inline-block;
	    font-size: 14px;
    	margin-left: 5px;
	}
</style>
</head>
<body>
	<div id="boardread_wrap">
		<!--제목 -->
		<div id="read_header">
			<div id="read_title">
				<h2>
					<span>정보</span>
				</h2>
				<div id="br_num">${boardview.bno}</div>
				<div id="br_title">| ${boardview.title}</div>
			</div>
			<!--작성자, 조회수, 추천수, 댓글수, 날짜  -->
			<div id="read_condition">
				<div id="rd_witer">${boardview.writer}</div>
					<div class="divider"></div>
				<span>조회수 ${boardview.viewcnt}</span>
					<div class="divider"></div>
				<span>추천수 ${boardview.goodcnt}</span>	
				 	<div class="divider"></div>
				 <span>댓글 9</span>
				 	<div class="divider"></div>
				 <span class="fa fa-clock-o">
				 	<c:choose>
		    			<c:when test="${today2 == regdate2}">
		    				<fmt:formatDate pattern="HH:mm:ss" value="${boardview.regdate}"/>
		    			</c:when>
		    			<c:otherwise>
		    				<fmt:formatDate pattern="yy-MM-dd" value="${boardview.regdate}"/>
		    			</c:otherwise>
		    		</c:choose>
				</span>
				<div id="sec_attach"><i class="fa fa-paperclip"></i>
					<a href="download.bizpoll?file=${boardview.filename}">${boardview.filename}
					(<fmt:formatNumber type="number" pattern="0.0" value="${boardview.filesize/1024}"></fmt:formatNumber>kb)</a></div>
				</div>
		</div>
		<!--게시글 내용 -->
		<div id="read_content">
			<article>
				<div id="bcontent">${boardview.content}</div>
				<!--추천 수 -->
				<div class="vote">
					<br>
					<br>
					<button type="button" class="vb-btn vb-red">
						<div class="good">
							<span style="color: red;">
								<i class="fa fa-heart" aria-hidden="true"></i>
							</span>
							추천 수
						</div>
						<span class="num">0</span>
					</button>
				</div>
			</article>
		</div>
	</div>	
		<div class="clear"></div>
		
		<!-- navigation -->
		<div class="navigation">
			
			<a href="" style="margin-left: 0; float: left;">
				<i class="fa fa-th-list"></i> 목록으로
			</a>
			<c:if test="${sessionScope.loginUser.id == boardview.writer}">
				<a href="boardUpadte.bizpoll?bno=${boardview.bno}"><button type="submit" id="btn_update">수정</button></a>
				<a href="#login_form"><button type="submit" id="btn_delete">삭제</button></a>
			</c:if>
			
			<div style="clear:both"></div>
		</div>
		
		
		<!-- 댓글창 -->
	 	<div class="rpwrap">
			<div id="reply_header">
				<span>댓글</span><b>4</b>
			</div>
			 <div id="reply_list">
				<div class="rpcontent">
					<div class="rpctwrap">
						<div></div>
						<div></div>
					</div>
				</div>
				<div style="clear:both"></div>
			</div>
		</div> 
</body>
</html>
<%@ include file = "../include/footer.jsp" %> 