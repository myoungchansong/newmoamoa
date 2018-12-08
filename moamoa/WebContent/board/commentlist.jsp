<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--댓글 로그인 여부-->
	
<div id="reply_wrap">
	<c:choose>
		<c:when test="${empty sessionScope.loginUser.id}">
			<section class="reply_section">
				<textarea rows="5" cols="100" class="reply_content" placeholder="로그인 후 댓글을 등록하세요" disabled="disabled" style="resize: none;"></textarea>
			</section>
		</c:when>	
				
		<c:otherwise>
		<form action="replyInsert.bizpoll" method="POST" name="frm_reply" id="frm_reply">
			<section class="reply_section">
				<div id="rwWriter">
					<input type="hidden" id="rpwriter" name="rpwriter" value="${sessionScope.loginUser.id}">
					<input id="rnik" name="rnik" value="${sessionScope.loginUser.nik}" type="hidden">${sessionScope.loginUser.nik}
				</div>
				<textarea rows="5" cols="100" name="reply_content"class="reply_content" placeholder="댓글을 입력해주세요" style="resize: none;"></textarea>
				<a href="#"><button type="button" id="btn_insertrply">등록</button></a>
				<span id="rpc_error">내용을 입력해주세요</span>
				
				<input type="hidden" name="re_writer" value="${sessionScope.login.nik}">
				<input type="hidden" id="re_bno" name="re_bno">
			</section>
		</form>
		</c:otherwise>
	</c:choose>
</div> 

	<div class="rpwrap">
		
		<div id="reply_header"><span>댓글</span>${replyList.size()}</div>
		<c:if test="${replyList.size() ==0}">
			<textarea rows="5" cols="100" class="reply_content" placeholder="댓글을 입력해주세요" style="resize: none;" disabled="disabled"></textarea>
		</c:if>
		
		<c:forEach items="${replyList}" var="replyview">
		 <div id="reply_list">
			<div class="rpcontent">
				<div class="rpctwrap">
					<div class="rp_writer">${replyview.nik}</div>
					<div class="rp_date">| 작성일:
						<c:choose>
					    	<c:when test="${today2 == regdate2}">
					    		<fmt:formatDate pattern="HH:mm:ss" value="${replyview.regdate}"/>
					    	</c:when>
					    	<c:otherwise>
					    		<fmt:formatDate pattern="yy-MM-dd" value="${replyview.regdate}"/>
					    	</c:otherwise>
				    	</c:choose>
					</div>
					
					<c:if test="${sessionScope.loginUser.id== replyview.writer}">
						<div class="rpcnt_del"><a class="btn_detail_delete" style="cursor: pointer;" data_num="${replyview.rno}"><span>|</span> 삭제</a></div>
					</c:if>
				
					</div>
				
				<textarea rows="5" cols="100" id="reply_content_read" readonly="readonly" style="resize: none;">${replyview.content}</textarea>
				</div>
			</div>
		</c:forEach>	
	<div style="clear:both"></div>				
	</div>	
</body>
</html>