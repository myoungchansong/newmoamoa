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
	.rule{
		padding: 50px 0px;
		background: #e1e1e1;
		width: 100%;
		height: 100%;
		border-top: 2px solid black;
	}
	.rule h2{
		font-size: 20px;
		padding: 20px 0px 0px 20px;
		margin-top: 100px;
	}
	.rule p{
		font-size: 12px;
		padding: 10px 0px 0px 50px;
	}
	.rule div{
		width: 80%;
		height: 300px;
		background: white;
		margin: 0px auto;
		border: 2px solid #dfdfdf;
		border-radius: 3px;
		margin-top: 10px;
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
	
	#okay{
		position: absolute;
		left: 800px;
		top: 30px;
		font-size: 15px;
		font-weight: bold;
		color: black;
	}
	
	
	
	
	
	#ckbWrap{
		margin: 30px 0px;
	}
	
	
	/* The container */
	.container {
	    display: block;
	    position: relative;
	    padding-left: 35px;
	    margin-bottom: 12px;
	    cursor: pointer;
	    font-size: 13px;
	    user-select: none;
	    color: gray;
	    font-weight: 300;
	}
	
	/* Hide the browser's default checkbox */
	.container input {
	    position: absolute;
	    opacity: 0;
	    cursor: pointer;
	    height: 0;
	    width: 0;
	}
	
	/* Create a custom checkbox */
	.checkmark {
	    position: absolute;
	    top: 0;
	    left: 800px;
	    height: 25px;
	    width: 25px;
	    background-color: #eee;
	}
	
	/* On mouse-over, add a grey background color */
	.container:hover input ~ .checkmark {
	    background-color: #ccc;
	}
	
	/* When the checkbox is checked, add a blue background */
	.container input:checked ~ .checkmark {
	    background-color: #00BCD4;
	}
	
	/* Create the checkmark/indicator (hidden when not checked) */
	.checkmark:after {
	    content: "";
	    position: absolute;
	    display: none;
	}
	
	/* Show the checkmark when checked */
	.container input:checked ~ .checkmark:after {
	    display: block;
	}
	
	/* Style the checkmark/indicator */
	.container .checkmark:after {
	    left: 9px;
	    top: 5px;
	    width: 5px;
	    height: 10px;
	    border: solid white;
	    border-width: 0 3px 3px 0;
	    transform: rotate(45deg);
	}
	
	
</style>
<script type="text/javascript">
$(document).ready(function(){
	/*모든 동의 사항에 체크했는 확인 하는 스크립트*/
	$("#btn_next").on("click",function(){
		var ck1 = $("#cbox1").is(":checked");
		var ck2 = $("#cbox2").is(":checked");
		var ck3 = $("#cbox3").is(":checked");
		if(ck1 == true && ck2 == true && ck3 == true){
			location.href="delete.bizpoll";
		}else{
			alert("모든 유의 사항에 동의 해주세요");
			return false;
		}

	});	

	/* Session이 Null 이면  메인페이지간다 */
		if('${sessionScope.loginUser.id}' !=''){
			
			
		} else {
			alert('로그인후 사용이 가능합니다 ');
			location.href="index.bizpoll";
		}
			
		
});

</script>
</head>
<body>

	<section id="headersection">
		<div id="myinfo">
			<h1>내 정보</h1>
			<a href="update.bizpoll"  style="color: black;">회원 정보 수정</a>
			<a href="pwupdate.bizpoll"  style="color: black;">비밀번호 수정</a>
			<a href="nikupdate.bizpoll"  style="color: black;">닉네임 수정</a>
			<a href="deleterule.bizpoll"style="color: #2196F3; text-decoration: underline; font-weight: bold;">회원 회원 탈퇴</a>
		</div>
	</section>
	
	<section id="bodysection">
		<H3>회원탈퇴에 앞서<span style="color: red">유의사항 및 안내</span>를 반드시 읽고 진행해 주세요!</H3>
		
		<div class="rule">
			<div>
				<h2>MOAMOA 아이디는 재사용 및 복구 불가 안내</h2>
				<label for="cbox1" class="container">
				원탈퇴 진행 시 본인을 포함한 타인 모두 <span style="color:red;">아이디 재사용이나 복구가 불가능합니다.</span><br>신중히 선택하신 후 결정해주세요.
				<input type="checkbox" id="cbox1" class="ckboxs">
					<span class="checkmark"></span>
					<span id="okay">동의</span>
				</label>
					
				
			</div>	
			
			<div>
				<h2>내정보 및 개인형 서비스 이용 기록 삭제 안내</h2>
				<label for="cbox2" class="container">
				내정보 및 개인형 서비스 이용기록이 모두 삭제되며, <span style="color:red;">삭제된 데이터는 복구되지 않습니다.</span><br>삭제되는 서비스를 확인하시고, 필요한 데이터는 미리 백업을 해주세요.
				<input type="checkbox" id="cbox2" class="ckboxs">
					<span class="checkmark"></span>
					<span id="okay">동의</span>
				</label>
			</div>
			
			
			
			<div>
				<h2>게시판형 서비스에 등록한 게시글 삭제 불가 안내</h2>
				<label for="cbox3" class="container">
				삭제를 원하는 게시글이 있다면 반드시 회원탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.<br>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 
				<span style="color:red;">게시글을 임의로 삭제해드릴 수 없습니다.</span>
				<input type="checkbox" id="cbox3" class="ckboxs">
					<span class="checkmark"></span>
					<span id="okay">동의</span>
				</label>
				
			</div>
		</div>
		
		<div id="button_div">
			<button style="background: white; color:  #2196F3;">탈퇴 취소</button>
			<button style="background: #2196F3; color: white; margin-left: 10px;" id="btn_next">다음 단계</button>
		</div>
	</section>
	
	
</body>
</html>