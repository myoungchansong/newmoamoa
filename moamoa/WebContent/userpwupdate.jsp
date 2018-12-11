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
		width: 60%;
		height: 100%;
		margin: 0 auto;
	}
	
	#bodysection h3{
		height: 100px;
		font-size: 25px;
		text-align: center;
	}
	
	#passdiv{
		width: 100%;
		height: 100%;
		border-top: 1px solid black;
		border-bottom: 1px solid black;
	}
	
	#pw_form p{
		display: inline-block;
		font-weight: bold;
		padding: 30px 0px 0px 30px;
	}
	
	
	
	
	
	
	
	
	
	
	
	#insert_pw{
		background-color: white;
		border: 1px solid #dadada;
		width : 400px;
		height: 50px;
		box-sizing: border-box;
		margin-top: 20px;
		border-radius: 3px;
		position: relative;
		top: -55px;		
		left: 250px;
	}

	#input_pw{
		width: 398px;
		height: 48px;
		display: block;
		border: none;
		overflow: visible;
		padding: 0px 0px 0px 10px;
		box-sizing: border-box;
		outline : none;
		z-index: 9;
    	background-color: #ffffff00;
    	
	}
	
	
	
	
	
	
	
	
	
	#insert_newpw{
		border-radius: 3px;
		background-color: white;
		border: 1px solid #dadada;
		width : 400px;
		height: 50px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
		top: -55px;		
		left: 250px;
	}
	#input_newpw{
		width: 398px;
		height: 48px;
		display: block;
		border: none;
		overflow: visible;
		padding: 0px 0px 0px 10px;
		box-sizing: border-box;
		outline : none;
		z-index: 9;
    	background-color: #ffffff00;
	}
	
	#tip{
		margin: 20px 0px 0px 30px;
		border-bottom: 1px solid black;
		padding-bottom: 30px;
	}
	#tip p{
		padding-top: 10px;
		color: #BDBDBD;
		font-size: 15px;
		
	}
	
	
	#button_div{
		margin-top: 50px;
		text-align: center;	
	
	}
	#button_div button{
		width: 150px;
		height: 50px;
		border: 1px solid;
		border-radius: 3px;
		
	}
	
	.error{
		color:#f46665;
		font-size: 12px;
		font-weight: 300;
		padding: 5px 10px;
		display: none; 
	}
	
	
</style>
<script type="text/javascript">
$(document).ready(function(){
	
	/* Session이 Null 이면  메인페이지간다 */
	
	if('${sessionScope.loginUser.id}' !=''){
			
	} else {
		alert('로그인후 사용이 가능합니다 ');
		location.href="index.bizpoll";
	}
	

	$("#before").on("click",function(){
		
		location.href="update.bizpoll";

	});		
	
	

	
	/*비밀번호 정규식을 거쳐 변경하는 코드*/
	$("#input_pw").blur(
			function() {
				var pwVal = $(this).val(); /*비밀번호 값 */
				if (pwVal != "") {
					$.ajax({
						url : "pwCheck.bizpoll",
						type : "POST",
						dataType : "json",
						data : "id=${sessionScope.loginUser.id}&pw="+pwVal,
						success : function(data) {
							if (data.message == -1) {
								$("#input_pw").next().text("비밀번호가 일치합니다").css("display", "block").css("color","#00BCD4");
								$("#insert_pw").css("border", "1px solid #00BCD4");
								$("#input_newpw").focus();
								$('#update').attr('disabled',false);  
							} else if (data.message == 1) {
								$("#input_pw").next().text("비밀번호가 일치하지 않습니다").css("display", "block").css("color", "red");
								$("#insert_pw").css("border", "1px solid red");
								$("#input_pw").select();
								$("#input_pw").focus();
								$('#update').attr('disabled',true);	
							}

						},
						error : function() {
							alert("System Error");
						}
					});
				} else{
					$("#input_pw").next().text("비밀번호를 입력해주세요").css("display", "block").css("color", "red");
					$("#insert_pw").css("border", "1px solid red");
					$("#input_pw").select();
					$("#input_pw").focus();
					$('#update').attr('disabled',true);	
				}
			}); 
	
	
	/*변경할 비밀번호 정규식 검사및 유효성 체크*/
	$("#input_newpw").blur(function() {
		var mpw1 = $("#input_newpw").val();
		var pw2 = $("#input_pw").val();
		var pw1 = $.trim(mpw1);
		var regPass = /^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/; 
		if (!regPass.test(pw1)) {
			$(this).next().text("8~20글자 내의 값을 입력해주세요").css("display", "block").css("color", "red");
			$("#insert_newpw").css("color", "red");
			$("#insert_newpw").css("border", "1px solid red");
			$("#input_newpw").select("");
			$("#input_newpw").focus();
			$('#btn_next').attr('disabled',true); /* delete버튼 비활성화   */
		} else if(pw1 == pw2){
			$(this).next().text("다른 비빌번호를 이용해 주세요").css("display", "block").css("color", "red");
			$("#insert_newpw").css("color", "red");
			$("#insert_newpw").css("border", "1px solid red");
			$("#input_newpw").select("");
			$("#input_newpw").focus();
			$('#btn_next').attr('disabled',true); /* delete버튼 비활성화   */
		} else if(pw2 ==""){
			$(this).next().text("변경할 비빌번호를 입력해 주세요").css("display", "block").css("color", "red");
			$("#insert_newpw").css("color", "red");
			$("#insert_newpw").css("border", "1px solid red");
			$("#input_newpw").select("");
			$("#input_newpw").focus();
			$('#btn_next').attr('disabled',true); /* delete버튼 비활성화   */
		} else{
			$("#insert_newpw").css("border", "1px solid #00BCD4");
			$(this).next().text("사용 가능한 비밀번호 입니다").css("display", "block").css("color", "#00BCD4");
			$('#btn_next').attr('disabled',false);   /* delete버튼 활성화   */
		}
	}); 
	
	
	
	$("#update").on("click",function(){
		var pw = $("#input_newpw").val();
		
		if(pw !=''){
			alert("비밀번호가  변경되었습니다");
			$("#pw_form").submit();
		}else{
			alert("값이 없습니다 확인해주세요");
			
		}
		
	});	
	
	
	
});

</script>


</head>

<body>
	<section id="headersection">
		<div id="myinfo">
			<h1>내 정보</h1>
			<a href="update.bizpoll" >회원 정보 수정</a>
			<a href="pwdate.bizpoll" style="color: #2196F3; text-decoration: underline; font-weight: bold;">비밀번호 수정</a>
			<a href="nikupdate.bizpoll">닉네임 수정</a>
			<a href="deleterule.bizpoll">회원 회원 탈퇴</a>
		</div>
	</section>
	
	
	<section id="bodysection">
		<H3>주기적인<span style="color: red">(6개월)</span> 비밀번호 변경을 통해 개인정보를 안전하게 보호 하세요</H3>
		<div id="passdiv">
		
			<div>
			
				<form action="pwupdateaction.bizpoll" id="pw_form">
					<p>현재 비밀번호를 입력해주세요 </p>
						<div id="insert_pw">	
							<input type="password" id="input_pw" name="inputpw"  placeholder="현재 비밀번호를 입력해주세요">
							<span class="error">비밀번호를 정확하게 입력해주세요</span>
						</div>
					
					<p>변경할 비밀번호를 입력해주세요 </p>
						<div id="insert_newpw">
							<input type="password" id="input_newpw" name="inpunewpw"  placeholder="새로운 비밀번호를 입력해주세요">
							<span class="error">비밀번호를 정확하게 입력해주세요</span>
						</div>
						<input type="hidden" id="input_id" name="input_id" value="${sessionScope.loginUser.id}">
				</form>
				
			</div>
			
			
			
		</div>
		
		<div id="tip">
			<p>비밀번호는 8~32자의 영문 대/소문자, 숫자, 특수문자를 조합하여 사용하실 수 있어요</p>
			<p>쉬운 비밀번호나 자주 쓰는 사이트의 비밀번호가 같은 결우, 도용되기 쉬워 주기적으로 변경하여 사용하는 것도 좋습니다</p>
			<p>비밀번호에 특수문자를 추가하여 사용하시면 기억하기도 쉽고, 비밀번호 안전도가 높아져 도용의 위험이 줄어 듭니다</p>
		</div>
		<div id="button_div">
			<button style="background: white; color:  #2196F3;"id="before">이전으로</button>
			<button style="background: #2196F3; color: white; margin-left: 10px;" id="update">변경하기</button>
		</div>
	</section>
</body>
</html>