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
	
	
	
	
	
	
	
	
	
	
	
	#insert_id{
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

	#input_id{
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
	
		if('${sessionScope.loginUser.id}' !=''){
			
			
		} else {
			alert('로그인후 사용이 가능합니다 ');
			location.href="index.bizpoll";
		}
		
		

		
		$("#input_newpw").blur(
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
									$("#insert_newpw").css("border", "1px solid #B2EBF2");
									$(".error").text("비밀번호가 일치합니다").css("display", "block").css("color", "#00BCD4");
									$('#delete').attr('disabled',false);   //delete버튼 활성화 
								} else if (data.message == 1) {
									$("#insert_newpw").css("border", "1px solid red")
									$(".error").text("비밀번호를 정확하게 입력해주세요").css("display", "block").css("color", "red");
									$("#input_newpw").select();
									$("#input_newpw").focus();
									$('#delete').attr('disabled',true);  //delete버튼 비활성화 
								}

							},
							error : function() {
								alert("System Error");
							}
						});
					} 
				}); 
		
		
		
		
		$("#delete").on("click",function(){
			var pw = $("#input_newpw").val();
			alert(pw);
			
			if(pw !=''){
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
			<a href="update.bizpoll">회원 정보 수정</a>
			<a href="pwdate.bizpoll">비밀번호 수정</a>
			<a href="nikupdate.bizpoll">닉네임 수정</a>
			<a href="deleterule.bizpoll"style="color: #2196F3; text-decoration: underline; font-weight: bold;">회원 회원 탈퇴</a>
		</div>
	</section>
	
	<section id="bodysection">
		<H3>안전한 탈퇴를 위해,<span style="color: red">비밀번호를 확인해 주세요</span></H3>
		<div id="passdiv">
			<div>
				<form action="deleteplay.bizpoll" id="pw_form">
					<p>현재 아이디 </p>
						<div id="insert_id">	
							<input type="text" id="input_id" name="inputid" value="${sessionScope.loginUser.id}" readonly="readonly">
						</div>
					
					<p>비밀번호 입력 </p>
						<div id="insert_newpw">
							<input type="password" id="input_newpw" name="inpunewpw"  placeholder="비밀번호를 입력해 주세요">
							<span class="error">비밀번호를 정확하게 입력해주세요</span>
						</div>
				</form>
			</div>
		</div>
		
	
		<div id="button_div">
			<button style="background: white; color:  #2196F3;" id="before">탈퇴 취소</button>
			<button style="background: #2196F3; color: white; margin-left: 10px;"id="delete">삭제하기</button>
		</div>
	</section>
</body>
</html>