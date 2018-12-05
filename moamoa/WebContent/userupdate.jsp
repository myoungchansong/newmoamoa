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
		padding: 100px 0px;
		width: 70%;
		height: 100%;
		margin: 0 auto;
	}
	.top2 {
		width: 960px;
		height: 460px;
	}
	
	.top2 > div{
		width: 450px;
		display: inline-block;
		height: 450px;
		border: 1px solid #dadada;
		margin: 0px 10px 5px 0px;
		background: #B2EBF2;
	}
	
	
	.top2 > div > a{
	
		width: 450px;
		height: 450px;
	}
	
	
	#toplogo p{
		text-align: center;
		font-weight: bold;
		color: #FFF;
		text-align: 450px;
	}
	
	#toppss{
	
		text-align: center;
	}
	
	#toppss p{
		color: white;
		font-weight: bold;
		margin-top: 160px;
	}
	
	
	#toppss a{
		color: white;
		font-weight: bold;
		margin-top: 160px;
		text-decoration: underline; 
	}
	
	
	
	
	.bottom3 > div{
		width: 297px;
		height: 120px;
		display: inline-block;
		margin-right: 5px;
		
		
	}
	
	.bottom3 > div > p{
		padding: 10px 0px 0px 10px;
		color: black;
		font-weight: bold;
	}
	.bottom3 > div > p > span{
		color: #BDBDBD;
		font-weight: normal;
	}
	.bottom3 > div > a{
		margin-top: 5px;
		margin-left: 30px;
		color: black;
		text-decoration: underline; 
	}
	
</style>
</head>
<script type="text/javascript">
$(document).ready(function() {
	
	if('${sessionScope.loginUser.id}' !=''){
		
		
	} else {
		alert('로그인후 사용이 가능합니다 ');
		location.href="index.bizpoll";
	}
		
	
	
});

</script>

<body>
	<section id="headersection">
		<div id="myinfo">
			<h1>내 정보</h1>
			<a href="update.bizpoll" style="color: #2196F3; text-decoration: underline; font-weight: bold;">회원 정보 수정</a>
			<a href="pwdate.bizpoll">비밀번호 수정</a>
			<a href="deleterule.bizpoll">회원 회원 탈퇴</a>
		</div>
		
	</section>
		
		

	<section id="bodysection">
	<div style="width: 1000px; height: 100%; margin: 0 auto;">
		<div class="top2">
			<div id="toplogo">
				<p style="font-size: 70px; margin-top: 120px;">${sessionScope.loginUser.nik}</p>
				<p style="font-size: 35px;">회원 정보 변경</p>
			</div>
			
			<div id="toppss" style="position: absolute;">
				<p style="font-size: 35px;">주기적인 비밀번호 변경<br>
					<span style="font-size: 17px;">
						최소 6개월에 1회 이상 비밀번호 변경을 권장합니다 
					</span>
				</p>
				<a href="pwuserdate.bizpoll">바로가기</a>
			</div>
		</div>
		
		
		
		<div class="bottom3">	
			<div style="border-right: 1px solid #dadada;">
				<p>개인 정보 이용현황<br><span>소중한 개정보!<br>어디에서 이용되고 있는걸까</span></p>
				<a href="#">바로가기</a>
			</div>
			
			<div style="border-right: 1px solid #dadada;">
				<p>로그인 기록<br><span>3개월간 내가 로그인한 기록을<br>살펴볼 수 있어요</span></p> 
				<a href="#">바로가기</a>
			</div>
			
			<div>
				<p >회원 탈퇴<br><span>회원 탈퇴에 앞서 유희상항을 및 안내를 <br>읽고 반드시 진행해 주세요</span></p>
				<a href="deleterule.bizpoll">바로가기</a>
			</div>
		</div>
		
	</div>	
	
	</section>
	
		<%@ include file="include/footer.jsp"%>
</body>
</html>