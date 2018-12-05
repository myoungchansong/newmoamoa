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
	#loginbody{
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
	.input_login{
		width:408px;
		height:16px;
		border-width:0px;
		padding: 7px 0px 6px 0px;
		cursor: pointer;
	}
	
	#btn_login{
		display:block;
		width:298px;
		height:59px;
		font-size: 22px;
		text-align : center;
		color: #fff;
    	background: #00BCD4;	
    	border: 1px solid #00BCD4;	
    	border-radius:2px;
    	padding-top:2px;
		line-height:61px;
		margin:30px auto;
		cursor: pointer;
	}
	#btn_login:hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	
	/*다른 계정으로 로그인*/	
	table{
		border-collapse: collapse; /*표 한줄로 만들수 있도록 합쳐주는 코드*/
		width: 100%;
	}
	.table_line{
		border-bottom: 2px solid #EAEAEA;
	}
	td{
		width:3px;
		height:30px;
		text-align:center;
	}
	#other_login{
		font-family: Open Sans,Helvetica Neue,Hiragino Sans GB,Microsoft YaHei,WenQuanYi Micro Hei,Arial,sans-serif!important;
		color:#8c8c8c;
	}
	.btn{
		width:100%;
		text-transform:uppercase;
		text-align:center;
		border-radius:2px;
		font-size:16px;		
		cursor: pointer;
    	text-decoration: none;
    	font-family: Open Sans,Helvetica Neue,Hiragino Sans GB,Microsoft YaHei,WenQuanYi Micro Hei,Arial,sans-serif!important;
	}
	.btn:hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	.lg.btn{
		height:48px;
	}
	.face.btn{
		color:#fff;
		background:#3b5998;
		border:none;
		
	}.face.btn img{
		width:125px;
		height:30px;
	}
	
	.ggl.btn{
		margin-top:10px;
		color:#ccc;
		background:#fff;
		border:1px solid #c1a2a2;
	}	
	.ggl.btn img{
		width:122px;
		height:17px;
	}
	
	img{
		vertical-align: middle;
    	border-style: none;
    	width:600px;
	}
	/*계정만들기*/
	fieldset{
		color:#8c8c8c;
		text-align : center;
		border:none;
		border-top:2px solid #EAEAEA;
		margin:30px 0 10px 0px;
		
	}
	fieldset>legend{
		font-family: Open Sans,Helvetica Neue,Hiragino Sans GB,Microsoft YaHei,WenQuanYi Micro Hei,Arial,sans-serif!important;
	}
	#btn_creatid{
		box-sizing: border-box;
		display:block;
		width:100%;
		height:59px;
		font-size: 17px;
		text-align : center;
		color: #00BCD4;	
   		background: #fff;
    	border: 1px solid #00BCD4;	
    	border-radius:2px;
		line-height:61px;
		margin:10px 0 20px 0;
		cursor: pointer;
		font-family: Open Sans,Helvetica Neue,Hiragino Sans GB,Microsoft YaHei,WenQuanYi Micro Hei,Arial,sans-serif!important;
	}
	#btn_creatid:hover{
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
		
	
		
		/*로그인 버튼을 클릭했을 때 유효성 체크  */
		$("#btn_login").on("click",function(){
		
			
			/*input의 id와 pw값을 입력. */
			var val1 = $("#input_id").val();
			var val2 = $("#input_pw").val();
			
			/* 유효성 체크 
		    id와 pw중 하나라도 값이 없으면 경고문 출력*/
		    if(val1 !="" && val2 !=""){
		    	/* $("#frm_login").submit(); */
		    	
		    	$.ajax({
				url : "LoginPlay.bizpoll",
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
		
		
		
		
		
		
		
		var input1= document.getElementById("input_id");
		var input2= document.getElementById("input_pw");

		input1.addEventListener("keyup", function(event) {
		    event.preventDefault();
		    if (event.keyCode === 13) {
		        input2.focus();
		    }
		});
		input2.addEventListener("keyup", function(event) {
		    event.preventDefault();
		    if (event.keyCode === 13) {
		        document.getElementById("btn_login").click();
		    }
		});
	});
	
</script>

</head>
<body id="loginbody">
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
					<div id="header_login">로그인</div>
				</header>
	
				<section>
					<form action="" method="POST" name="frm_login" id="frm_login">
						<div id="insert_id">
							<label for="insert_id" id="insert_label" id="hdid"> ID/이메일	주소를 입력해주세요.</label> 
							<input type="text" id="input_id" name="inputid">
						</div>
		
						<div id="insert_pw">
							<label for="insert_pw" id="insert_label_pw" id="hdpw"> 비밀번호</label> 
							<input type="password" id="input_pw" name="inputpw">
							<div id="find_pw">
								<span>비밀번호찾기</span>
							</div>
						</div>						
					</form>
	
					<div id="err_check">
						<span id="err_check_msg">ID와 PW를 모두 입력해 주세요.</span>
					</div>
					
					<div>
						<a href="#" id="btn_login">로그인</a>
					</div>
	
					<table>
						<tr>
							<td class="table_line"></td>
							<td id="other_login" rowspan="2">다른계정으로 로그인하기</td>
							<td class="table_line"></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
					</table>
	
					<button type="button" autofocus="autofocus" class="btn face lg">
						<a href="https://www.facebook.com/"><img src="img/facebooklogo.png"></a>
					</button>
					<button type="button" autofocus="autofocus" class="btn ggl lg">
						<a href="https://www.google.com/"><img  src="img/googlelogo.png"></a>
					</button>
	
					<fieldset>
						<legend>&nbsp;계정이 없으신가요?&nbsp;</legend>
					</fieldset>
					<div>
						<a href="member.bizpoll" id="btn_creatid">MOAMOA 계정 만들기</a>
					</div>
				</section>
			</div>
		</div>
		<div id="clr_div"></div>
	</div>
</body>
</html>