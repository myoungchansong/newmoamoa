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
    	margin: 1% 0 0% 14%;
	}
		/* index */
	#boardRead #con_wrap{
		background-color: white;
		padding-top: 10px;
	}
	#boardRead .index_section{
	    position: relative;
    	width: 100%;
    	min-width: 1200px;
    	padding: 20px 0;
    	box-sizing: border-box;
	}
	#boardRead .section_con{
	    margin-left: auto;
	   	margin-right: 23%;
	   	position: relative;
	    max-width: 1200px;
	    min-width: 1200px;
	}	
	#boardRead .index_sec_ul{
		display: flex;
		justify-content: flex-start;
	    text-transform: capitalize;
	    font-size: 15px;
	}
	#boardRead .index_li>a{
	   color: #707473;
	}
	#boardRead .index_li:before{
		content: "/\A0";
    	margin: 0 5px;
    	color: #ccc;
	}
	#boardRead .index_li:last-child{
		cursor: default;
    	pointer-events: none;
    	color: #979797;
	}
	
	
	#read_header{
	    display: block;
    	position: relative;
    	padding: 0;
   		background: #fff;
   		clear: both;
	}
	#read_title>h2{
		padding: 7px 16px 5px;
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
	    border: 1px solid #e5e5e5;;
	    margin: 1% 0 5% 14%;
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
	.rpctwrap{
		width: 100%;
	}
	.rp_writer{
		display: inline-block;
		margin-left: 20px;
	}
	.rp_date{
		display: inline-block;
	    color: #4e0707;
	    padding-left: 2px;
	    font-weight: 400;
	}
	#reply_content_read{
		display: block;
	    margin: 10px 50px 20px 20px;
   		width: 95%;
   		outline: none;
   		padding: 10px;
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
	/* modal */
	#modal_header{
		display: block;
	    font-size: 17px;
	    float: left;
	    width: 94%;
	    height: 23px;
	    padding: 8px 9px;
	    background-color: #15d7e09e;
	    color: white;
	    border-radius: 13px;
	}
	#modal_con1{
		width: 100%;
    	height: 145px;	
	}
	#modal_con1>p{
		font-size: 22px;
	    text-align: center;
	    color: black;
	    padding: 70px 0px 30px 13px;
	    display: block;
	}
	#modal_con1>p>span{
		color: red;
		font-weight: 450px; 
	}
	.modal_btn{
	    line-height: 30px;
	    display: inline-block;
	    height: 30px;
	    padding-top: 1px;
	    text-align: center;
	    width: 150px;
	    position: relative;
	    border-radius: 22px;
	    margin: 0 13px;
	}
	.modal_btn:hover{
		cursor: pointer;
	}
	.modal_btn>span{
		font-size: 20px;
	    text-align: center;
    	position: absolute;
    	display: contents;
	}
	#divbc{
		background-color: #EAEAEA;
		border: 1px solid #EAEAEA;
	}
	#divbc:hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
		color: black;
	}
	#btnCs{
		color: #8C8C8C;
	}
	#btnCs:hover{
		color:black;
	}
	#div_agr{
		border: 1px solid #00bbced6;
		background-color: #00bbced6;
	}
	#div_agr:hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	#btnagr{
		color: #fff;
	}
	.overlay {
	    background-color: rgba(0, 0, 0, 0.6);
	    bottom: 0;
	    cursor: default;
	    left: 0;
	    opacity: 0;
	    position: fixed;
	    right: 0;
	    top: 0;
	    visibility: hidden;
	    z-index: 9;
	    transition: opacity .5s;
	}
	.overlay:target {
	    visibility: visible;
	    opacity: 1;
	}
	.popup {
	    background-color: #fff;
	    width : 360px;
	    height: 200px;
	    border: 3px solid #fff;
	    display: inline-block;
	    left: 50%;
	    opacity: 0;
	    padding: 15px;
	    position: fixed;
	    text-align: justify;
	    top: 40%;
	    visibility: hidden;
	    z-index: 10;
	    transform: translate(-50%, -50%);
	    border-radius: 10px;
	    transition: opacity .5s, top .5s;
	}
	.overlay:target+.popup {
	    top: 50%;
	    opacity: 1;
	    visibility: visible;
	}
	.rpcnt_del{
		display: inline-block;
	    font-size: 17px;
	    float: right;
	    line-height: 23px;
	    padding-right: 11px;
	    margin-right: 5px;
	    margin-bottom: 4px;

	}
	.rpcnt_del>a>span{color:gray;}
	.rpcnt_del>a{color:red;}
	
	#reply_wrap{
		display: block;
	    width: 55%;
	    margin: 0 14%;
	    height: 100%;
	    margin-top: 15px;
	    border: 1px solid #e5e5e5;
	}
	.reply_content{
		display: inline-block;
	    font-size: 15px;
	    padding: 5px 0 0 9px;
	    border: 1px solid gray;
	    height: 30px;
	    margin: 25px 20px 10px 30px;
	    width: 78%;
	    outline: none;
	}
	
	#rwWriter {
    	padding: 20px 0 0 20px;
	    color: #0f54d2e3;
	    font-weight: bold;
	}
	#btn_insertrply{
		display: inline-block;
	    background-color: #39b4efd4;
	    border: none;
	    height: 30px;
	    width: 110px;
	    border-radius: 3px;
	    float: right;
	    color: white;
	    margin: 27px 38px 5px 5px;
	}
	#rpc_error{
		color:red;
		font-size:14px;
		font-weight:bold;
		display:none; 
		padding: 5px;
    	margin: 0 0 12px 20px;
	}
</style>
<script type="text/javascript">
$(document).ready(function(){
	//문서가 준비되면 댓글 목록을 조회하는 ajax 실행 
	comment_list();	
	
});

	function comment_list(){
		$.ajax({
			type :"post",
			url : "commentlist.bizpoll",
			data: "bno=${boardview.bno}",
			success:function(result){
				$("#commentList").html(result);
			}
			
		});
		
	}
	/* 댓글 입력 */
	$(document).on("click","#btn_insertrply",function(){
		var content=$(".reply_content").val();
		alert(content);
		
		if(content==""){
			$(".reply_content").focus();
			$("#rpc_error").css("display","block");
			return false;
		}else{
			var bno=${boardview.bno};
			$("#re_bno").val(bno);
		}
		$.ajax({			
			url : "replyInsert.bizpoll",
			data: $("#frm_reply").serialize(), 
			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success:function(){
				comment_list();
				$(".reply_content").val("");
			},
			error : function(){
				alert("system error!");	
			}
		});
	});	
	
	$(document).on("click","#btnagr",function(){
		location.href="boardDeletePlay.bizpoll?bno=${boardview.bno}"
	});
	/* 댓글 삭제 */
	$(document).on("click",".btn_detail_delete",function(){
		var rno =$(this).attr("data_num");
		var bno =${boardview.bno};
		
			$.ajax({
				url : "replydelete.bizpoll",
				data: "rno="+ rno +"&bno="+bno,
				success:function(result){
					comment_list();
				},
				error : function(){
					alert("system error!");	
				}
			});
				
	});
	/* 게시판 좋아요 시작 */ 
	$(document).on("click","#btn_good",function(){
		var bno = $('#bno_tran').val();
	    var id = "${sessionScope.loginUser.id}";
		//alert("되냐아아?");
		
			$.ajax({
				url : "goodcntUpdate.bizpoll",
				tpye : "POST",
				data : "bno="+bno+"&id="+id,
				success : function(data){
					recCount();// 게시글 추천수표시 
				},
				error : function(){
					alert("system error!");
				}
			});		
		
	}); 

    function recCount() {
    	var bno = $('#bno_tran').val();
	 $.ajax({
	  url: "goodCount.bizpoll",
      type: "POST",
      dataType: "json",
      data: 'bno='+bno,
      success: function (result) {
       $(".num").html(result.count); // 게시글의 총 추천수 표시 
       }
	 })
    };
/* 게시판 좋아요 끝 */

</script>
</head>
<body id="boardRead">
		<div id="con_wrap">
			<section class="index_section">
				<div class="section_con">
					<ul class="index_sec_ul">
						<li class="index_li"><a href="#">COMMUNITY</a></li>
						<li class="index_li"><a href="#">자유게시판</a></li>
					</ul>
				</div>
			</section>
		</div>
	<div id="boardread_wrap">
	
		<!--제목 -->
		<div id="read_header">
			<div id="read_title">
				<h2>
					<span></span>
				</h2>
				<div id="br_num">${boardview.bno}</div>
				<div id="br_title">| ${boardview.title}</div>
				<input type="hidden" id="bno_tran" value="${boardview.bno}">
				<input type="hidden" id="breply_tran" value="${boardview.replycnt}">
			</div>
			<!--작성자, 조회수, 추천수, 댓글수, 날짜  -->
			<div id="read_condition">
				<div id="rd_witer">${sessionScope.loginUser.nik}</div>
					<div class="divider"></div>
				<span>조회수 ${boardview.viewcnt}</span>
					<div class="divider"></div>
				<span id="goodcnt">추천수 ${boardview.goodcnt}</span>	
				 	<div class="divider"></div>
				 <span>댓글 ${boardview.replycnt}</span>
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
				<c:if test="${sessionScope.loginUser.id == null}">
				<div class="vote">
					<br>
					<br>
					<button type="button" class="vb-btn vb-red" id="btn_good" disabled="disabled">
						<div class="good">
							<span style="color: red;">
								<i class="fa fa-heart" aria-hidden="true"></i>
							</span>
							추천 수
						</div>
						<span class="num"> ${boardview.goodcnt}</span>
					</button>
				</div>
				</c:if>
				
				<c:if test="${sessionScope.loginUser.id != null}">
				<div class="vote">
					<br>
					<br>
					<button type="button" class="vb-btn vb-red" id="btn_good">
						<div class="good">
							<span style="color: red;">
								<i class="fa fa-heart" aria-hidden="true"></i>
							</span>
							추천 수
						</div>
						<span class="num"> ${boardview.goodcnt}</span>
					</button>
				</div>
				</c:if>
				
				
			</article>
		</div>
	</div>	
		<div class="clear"></div>
		
		<!-- navigation -->
		<div class="navigation">
			
			<a href="boardList.bizpoll" style="margin-left: 0; float: left;">
				<i class="fa fa-th-list"></i> 목록으로
			</a>
			<c:if test="${sessionScope.loginUser.id == boardview.writer}">
				<a href="boardUpadte.bizpoll?bno=${boardview.bno}"><button type="submit" id="btn_update">수정</button></a>
				<a href="#login_form"><button type="submit" id="btn_delete">삭제</button></a>
			</c:if>
			
			<div style="clear:both"></div>
		</div>
		
		<div id="commentList"></div>
		<div style="clear:both"></div>	
		
		<!--modal  -->
	 <a href="#" class="overlay" id="login_form"></a>
        <div class="popup">
           <div id=modal_header>MoaMoa</div>
            <div id="modal_con1"><p>정말 <span>삭제</span> 하시겠습니까?</div>            
				<div class="modal_btn" id="divbc">
					<span><a href="#" id="btnCs">아니오</a></span>
				</div>
			
            <div class="modal_btn" id="div_agr">
				<a href="#" id="btnagr"><span>네</span></a>				
			</div>			
        </div>
		
		
</body>
</html>
<%@ include file = "../include/footer.jsp" %> 