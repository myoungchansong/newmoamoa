<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="include/include.jsp"%>
<%@ include file="include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	* ,body{
		margin: 0;
		padding: 0;
		text-decoration: none;
	}
	
	#headersection{
		width: 100%;
		height: 50px;
		border-bottom: 3px solid black;
		padding: 5px 0px 10px 0px;
	}
	#myinfo {
		width: 70%;
		height: 50px;
		margin: 0 auto;
	}
	#myinfo h1{
		width: 100px;
		height: 100%;
		line-height: 50px;
		display: inline-block;
		text-align: center;
		font-size: 25px;
	}
	#myinfo a{
		width: 100px;
		height: 100%;
		line-height: 50px;
		padding-left: 50px;
		font-weight: bold;
	}
	
	#myinfo a:hover{
		font-weight: bold;
		color: #2196F3;
		text-decoration: underline;
	}
	
	
	
	#bodysection{
		padding:50px 0px;
		width: 70%;
		height: 100%;
		margin: 0 auto;
	}
	
	#bodysection h3{
		height: 100px;
		font-size: 25px;
	}
	
	#passdiv{
		width: 100%;
		height: 100px;
		background: red;
	}
	
</style>
</head>

<body>
	<section id="headersection">
		<div id="myinfo">
			<h1>내 정보</h1>
			<a href="#" >회원 정보 수정</a>
			<a href="#" style="color: #2196F3; text-decoration: underline; font-weight: bold;">비밀번호 수정</a>
			<a href="#">회원 회원 탈퇴</a>
		</div>
	</section>
	
	
	<section id="bodysection">
		<H3>주기적인<span style="color: red">(6개월)</span> 비밀번호 변경을 통해 개인정보를 안전하게 보호 하세요</H3>
		<div id="passdiv">
			
		</div>
	</section>
</body>
</html>