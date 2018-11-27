<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="include/include.jsp" %> 
<% String referer = request.getHeader("referer"); %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Made with WOW Slider - Create beautiful, responsive image sliders in a few clicks. Awesome skins and animations. Css slideshow" />

	<!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->

<style type="text/css">

	#membody{
		margin:0;
		padding:0;
		background-color:#eeeeee;
	}
	a{
		text-decoration: none;
	}
	ul{
		list-style-type: none;
	}	
	#body_wrap{
		width : 1200px;
		box-shadow: 0 0 6px rgba(0,0,0,0.3);
		margin : 50px auto;
		align-items: center;
	}
	#body_wrap>div:not(#clr_div){
		float: left;
	}
	#photo_wrap{
		display: inline-block;
		width:600px;
		background: white;
		border-radius:10px; 
		align-items: center;
	}
	#login_layout{
		display: inline-block;
		width:600px;
		height:899px;
		background: white;
		
	}
	/*header(호버드론로고)*/
	#content_layout{
		width:300px;
		margin:0 auto;
		/* border: 1px solid blue; */
		position: relative;
	}
	#header_div img{
		display: block;
	    margin: 50px auto 20px;
	    height: 137px;
	    width: 148px;
	}
	#header_login{
		font-size: 33px;
    	margin:30px auto;
    	color: #707374;
    	font-weight: 300;
    	text-align: center;
	}
	
	/*section(input(id,pw),로그인버튼,find)  */
	
	#insert_id{
		background-color: white;
		border: 1px solid #dadada;
		width : 300px;
		height: 50px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
	}
	#insert_label{
		font-size: 15px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: 0.3s;
		color :#979797;
		top: 13px;
		left: 10px;
	}
	#input_id{
		width: 298px;
		height: 48px;
		display: block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 20px 0px 0px 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline : none;
		z-index: 9;
    	background-color: #ffffff00;
	}
	#insert_pw{
		background-color: white;
		border: 1px solid #dadada;
		width : 300px;
		height: 50px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
		display: flex;
	}
	#insert_label_pw{
		font-size: 15px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: 0.3s;
		color :#979797;
		top: 13px;
		left: 10px;
	}
	#input_pw{
		width: 298px;
		height: 48px;
		display: block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 20px 0px 0px 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline : none;	
		z-index: 9;
 		background-color: #ffffff00;	
	}
	#insert_rpw{
		background-color: white;
		border: 1px solid #dadada;
		width : 300px;
		height: 50px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
		display: flex;
	}
	#insert_label_rpw{
		font-size: 15px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: 0.3s;
		color :#979797;
		top: 13px;
		left: 10px;
	}
	#input_rpw{
		width: 298px;
		height: 48px;
		display: block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 20px 0px 0px 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline : none;	
		z-index: 9;
 		background-color: #ffffff00;	
	}
	#find_pw>span{
		float: right;
		text-align: center;
    	align-items: center;
    	display: flex;
    	font-size: 12px;
    	width: 95px;
    	height: 48px;
    	color: #707374;
	}
	#find_pw>span:hover{
		text-decoration: underline;
		color: #44a8f2;
		cursor: pointer;
	}
	/*체크박스 */
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
	    left: 0;
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
	.input_login{
		width:408px;
		height:16px;
		border-width:0px;
		padding: 7px 0px 6px 0px;
		cursor: pointer;
	}
	
	#btn_next{
		display:block;
		width:298px;
		height:59px;
		font-size: 22px;
		text-align : center;
		color: #fff;
    	background: #00bcd482;	
    	border: 1px solid #00bcd482;
    	border-radius:2px;
    	padding-top:2px;
		line-height:61px;
		margin:30px auto 20px;
		cursor: not-allowed;
	}
	#btn_next:hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	
	#err_check_msg{
		display:inline-block;
		width:428px;
		height:24px;
		font-size:11px;
		font-weight:700;
		line-height:24px;
		color:#f46665;
		padding:0px 15px;
		text-align:center;
		box-sizing: border-box;
	}
	#err_check{
		display:none;
	}
	#clr_div{
		clear:both;
	}
	#nowlogin>a{
		display: block;
		text-align: center;
		font-size: 15px;
		font-weight: 300;
		color: #00BCD4;
		cursor: pointer;
	}
	#nowlogin>a:hover{
		text-decoration: underline;
	}
	#copyright{
		display: inline-block;
		font-size: 12px;
		font-weight: 400;
		text-align: center;
		color: #b1acacf5;
		width: 100%;
		margin: 20px auto;
	}
	.cra{
		text-decoration: underline;
		cursor: pointer;
	}
</style>  
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#insert_id").focus(function(){
			$(this).css("font-size", "17px");
			$("#insert_label").css("top","5px").css("font-size","12px");
		});
		$("#input_id").focus(function(){
			$(this).css("font-size", "17px");
			$("#insert_label").css("top","5px").css("font-size","12px");
		});
		$("#input_id").blur(function(){
			var idVal = $(this).val();
			if(idVal == ""){
				$(this).css("font-size","5px");
				$("#insert_label").css("top","15px").css("font-size","15px");
			}
		});
		
		$("#insert_pw").focus(function(){
			$(this).css("font-size", "17px");
			$("#insert_label_pw").css("top","5px").css("font-size","12px");
		});
		$("#input_pw").focus(function(){
			$(this).css("font-size", "17px");
			$("#insert_label_pw").css("top","5px").css("font-size","12px");
		});
		$("#input_pw").blur(function(){
			var idVal2 = $(this).val();
			if(idVal2 == ""){
				$(this).css("font-size","5px");
				$("#insert_label_pw").css("top","15px").css("font-size","15px");
			}
		});
		
		$("#insert_rpw").focus(function(){
			$(this).css("font-size", "17px");
			$("#insert_label_rpw").css("top","5px").css("font-size","12px");
		});
		$("#input_rpw").focus(function(){
			$(this).css("font-size", "17px");
			$("#insert_label_rpw").css("top","5px").css("font-size","12px");
		});
		$("#input_rpw").blur(function(){
			var idVal2 = $(this).val();
			if(idVal2 == ""){
				$(this).css("font-size","5px");
				$("#insert_label_rpw").css("top","15px").css("font-size","15px");
			}
		});
	
		
		/*확인 버튼을 클릭했을 때 유효성 체크  */
		$("#btn_next").on("click",function(){
		
			/*input의 id와 pw값을 입력. */
			var val1 = $("#input_id").val();
			var val2 = $("#input_pw").val();
			var val3 = $("#input_rpw").val();
			
			/* 유효성 체크 
		    id와 pw, rpw 하나라도 값이 없으면 경고문 출력*/
		    if(val1 !="" && val2 !="" && val3 !=""){
		    	/* $("#frm_login").submit(); */
		    	
		    	$.ajax({
				url : "",
				type : "POST",
				dataType : "json",
				data : "id="+val1+"&pw="+val2,
				success : function(data){
					if(data.message =="1"){
						location.href="<%=referer%>";
					}else{
						$("#err_check_msg").text("아이디 또는 패스워드가 일치하지 않습니다.");
						$("#err_check").css("display","block");
					}
				},
				error : function(){
					alert("system error!");
				}
				})
		    }else{
		    	$("#err_check").css("display","block");
		    	return;
		    }
			
		});
		
		/* enter 눌렀을때 다음칸으로 넘어가기  */
		var input1= document.getElementById("input_id");
		var input2= document.getElementById("input_pw");
		var input3= document.getElementById("input_rpw");

		input1.addEventListener("keyup", function(event) {
		    event.preventDefault();
		    if (event.keyCode === 13) {
		        input2.focus();
		    }
		});
		input2.addEventListener("keyup", function(event) {
		    event.preventDefault();
		    if (event.keyCode === 13) {
		    	 input3.focus();
		    }
		});
		input3.addEventListener("keyup",function(event){
			event.preventDefault();
			if(event.keyCode === 13){
				document.getElementById(btn_next).click();
			}
		});
			
		
		$(".ckboxs").on("click",function(){
			if($(".ckboxs:checked").length==2){
				$("#cbox1","#cbox2").prop("checked",true); 
				$("#btn_next").css({"background":"#00BCD4","border":"1px solid #00BCD4","cursor":"pointer","disabled":"none"}); 
			}else{
			/* 	$("#cbox1","#cbox2").prop("checked",false); */
				$("#btn_next").css({"background":"#00bcd482","border":"1px solid #00bcd482","disabled":"disabled","cursor":"not-allowed"});
			}
		});
		$("#btn_next").on("click",function(){
			/* alert("test"); */
			var ck1 = $("#cbox1").is(":checked");
			var ck2 = $("#cbox2").is(":checked");
			if(ck1==true && ck2 ==true){
				location.href =""; 
			}else{			
				$("#err_check").css("display","block");
				$("#btn_next").css({"backgroud":"#00bcd482","border":"1px solid #00bcd482","disabled":"disabled","cursor":"not-allowed"});
			}
		});		
	});
	

</script>

</head>
<body id="membody">
	<div id="body_wrap">
		<div id="photo_wrap">
			<!-- Start WOWSlider.com BODY section -->
			<div id="wowslider-container1">
				<div class="ws_images">
					<ul>
						<li><img src="data1/images/palace.png" alt="" title=""	id="wows1_0" /></li>
						<li><a href="http://wowslider.net"><img	src="data1/images/lottetower.png" alt="jquery slider" title="" id="wows1_1" /></a></li>
						<li><img src="data1/images/poster.png" alt="" title="" id="wows1_2" /></li>
					</ul>
				</div>
				<div class="ws_bullets">
					<div>
						<a href="#" title=""><span><img	src="data1/tooltips/palace.png" alt="" />1</span></a> <a href="#" title=""><span>
						<img src="data1/tooltips/lottetower.png" alt="" />2</span></a> <a href="#" title=""><span>
						<img src="data1/tooltips/poster.png" alt="" />3</span></a>
					</div>
				</div>
				<div class="ws_script" style="position: absolute; left: -99%">
					<a href="http://wowslider.net">jquery image slider</a> by
					WOWSlider.com v8.8
				</div>
				<div class="ws_shadow"></div>
			</div>
			<script type="text/javascript" src="engine1/wowslider.js"></script>
			<script type="text/javascript" src="engine1/script.js"></script>
			<!-- End WOWSlider.com BODY section -->

		</div>
		<div id="login_layout">
			<div id="content_layout">
				<header>
					<div id="header_div">
						<a href=""><img alt="로고" src="img/main.png"></a> 
						
					</div>
					<div id="header_login">등록하기</div>
				</header>
	
				<section>
					<form action="" method="POST" name="frm_login" id="frm_login">
						<div id="insert_id">
							<label for="insert_id" id="insert_label"> ID/이메일 주소를 입력해주세요.</label> 
							<input type="text" id="input_id" name="inputid">
						</div>
		
						<div id="insert_pw">
							<label for="insert_pw" id="insert_label_pw"> 비밀번호</label> 
							<input type="password" id="input_pw" name="inputpw">
						</div>
						
						<div id="insert_rpw">
							<label for="insert_rpw" id="insert_label_rpw"> 비밀번호 재입력</label> 
							<input type="password" id="input_rpw" name="inputrpw">
						</div>							
					</form>
	
					<div id="err_check">
						<span id="err_check_msg">ID와 PW를 모두 입력해 주세요.</span>
					</div>
					
					<div id="ckbWrap">
						<label for="cbox1" class="container"> MoaMoa의 서비스, 호텔리뷰 업데이트 등의 최신 소식을 받아보세요.
						  <input type="checkbox" id="cbox1" class="ckboxs">
						  <span class="checkmark"></span>
						</label>
						<label for="cbox2" class="container"> MoaMoa 개인정보 보호정책과 이용약관을 준수하는 것에 동의합니다.
						  <input type="checkbox" id="cbox2" class="ckboxs">
						  <span class="checkmark"></span>
						</label>
					</div>
					<div>
						<a href="#"><button type="button" id=btn_next disabled="disabled">확인</button></a>
					</div>
					
					<div id="nowlogin">
						<a href="#">지금 로그인하기</a>
					</div>
					
				</section>
			</div>
		</div>
		<div id="clr_div"></div>
	<div id="copyright">Copyright © 2018 MoaMoa All Rights Reserved. <a class="cra">개인정보처리방침</a><a>이용 약관</a> <br>
		문의사항이 있다면 <a class="cra">여기</a>를 클릭해 고객지원 팀에 연락할 수 있습니다.
	</div>
	</div>
</body>
</html>