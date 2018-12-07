<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ include file = "../include/header.jsp" %>  
 <%@ include file="../include/include.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>board_regist</title>
<style type="text/css">
	#board_insert #con_wrap{
		background-color: white;
		padding-top: 25px;
	}
	#board_insert .index_section{
	    position: relative;
    	width: 100%;
    	min-width: 1200px;
    	padding: 20px 0;
    	box-sizing: border-box;
	}
	#board_insert .section_con{
	    margin-left: auto;
    	margin-right: auto;
    	position: relative;
	    max-width: 1200px;
	    min-width: 1200px;
	}
	#board_insert .index_sec_ul{
		display: flex;
		justify-content: flex-start;
	    text-transform: capitalize;
	    font-size: 15px;
	}
	#board_insert .index_li>a{
	   color: #707473;
	}
	#board_insert .index_li:before{
		content: "/\A0";
    	margin: 0 5px;
    	color: #ccc;
	}
	#board_insert .index_li:last-child{
		cursor: default;
    	pointer-events: none;
    	color: #979797;
	}
	#b_insert_wrap{
		display: block;
		width: 60%;
		margin: 0 auto;
		border-radius: 10px;
		margin-bottom: 50px;
	}
	#insert_name{
		display: block;
		margin-bottom: 20px;
		border-bottom: 2px solid gray;
	}
	#insert_name>h2{
		font-size: 22px;
		font-weight: 400px;
		color: gray;
		padding:10px;
		margin: 10px 0;
	}
	#insert_fst{
		display: block;
		padding: 14px 0 14px 20px;
    	border: 1px solid gray;
	}
	#insert_ct{
		display: inline-block;
		padding: 5px;
    	margin-left: 10px;
    	color: gray;
	}
	#insert_category{
		display: inline-block;
		padding: 5px;
    	margin-right: 5px;
    	outline: none;
	}
	#insert_title{
		display: inline-block;
	}
	#insert_title>span{
		font-size: 14px;
		color: gray;
		padding: 5px;
	}#input_title{
		width: 545px;
		height: 20px;
		padding: 5px;
		outline: none;
	}
	#insert_writer{
		display: inline-block;
	}
	#insert_writer>span{
		font-size: 14px;
		color: gray;
		padding: 5px;
	}
	#input_writer{
		width: 268px;
		height: 20px;
		padding: 5px;
		outline: none;
	}	
	#insert_scd{
		display: block;
		border-bottom: 1px solid gray;
	    border-right: 1px solid gray;
	    border-left: 1px solid gray;
		
	}
	#insert_content{
		font-size: 16px;
		display: inline-block;
		color: gray;
		padding: 13px;
		
	}
	.insert_textarea{
		width: 96%;
		margin: 0 auto;
	    padding-bottom: 26px;
	    padding-left: 26px;
	}
	#insert_thr{
		border-bottom: 1px solid gray;	
		border-left: 1px solid gray;
    	border-right: 1px solid gray;
		padding: 10px;
	}
	.btn{
		border: none;
	    background-color: #14a58aa3;
	    display: inline-block;
	    height: 34px;
	    width: 75px;
	    margin-left: 19px;
	    margin-right: 8px;
	    cursor: pointer;
	    outline: none;
	    padding: 5px;
	}
	#input_attach{
		width: 915px;
    	height: 20px;
		outline: none;
	}
	#insert_four{
		padding: 14px 0px;
		height: 30px;
	}
	#btn_insert{
		border: none;
	    background-color: #639be0b8;
	    width: 80px;
	    height: 33px;
	    cursor: pointer;
	    outline: none;
	    float: right;
	}
	.clr{clear:both;}
	.error{
		font-size: 11px;
		font-weight: 400px;
		color: red;
		padding: 5px;
    	margin-left: 11px;
    	font-weight: 600;
    	display: none;
	}
	
</style>
<script type="text/javascript" src="${path}/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	$(document).ready(function() {
		if("${boardview.filesize}"!="0"){
			$("#close_btn").css("display","inline-block");
		}
	});
	$(document).on("click","#btn_insert",function(elClickedObj){
		var title =$("#input_title").val();
		//스마트에디터로 content부분 값 넘겨 받는 부분
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
		if(title==""){
			$("#input_title").focus();
			$(".error").css("display","block");
			return false;
		}
		var nowfile = $("#file-name").text();
		$("#now-file-name").val(nowfile);
		$("#btn_insert").submit();
		
	});
	$(document).on("blur","#input_title",function(){
		var title =$("#input_title").val();
		
		if(title ==""){
			$(".error").css("display","block");
		}else{
			 $(".error").css("display","none");
		}
	});
	$(document).on("click",".btn-file",function(){
			$("#uploadfile").click();
		});
	$(document).on("change","#uploadfile",function(){
		var filesize= $(this)[0].files;/* file들을 첨부할수 있으니 (배열)  */
		if(filesize.length < 1){
			$("#file-name").text("선택된 파일 없음");
			$("#close_btn").css("display","none");
		} else{ 
			//첨부파일이 있다면 파일 사이즈랑 이름 읽어오기
			var filename = this.files[0].name;
			var size = this.files[0].size;
			var maxSize = 10*1024*1024; //10MB 용량제한
			
			if(size>maxSize){ //용량제한걸림
				alert("첨부파일 사이즈는 10mb이내로 등록 가능합니다.");
				$("#file-name").text("선택된 파일없음");
				//화면단에서는 input type ="file"용량제한하는 코드 없음
				//그래서 경고창은 뜨지만 실제 10mb 넘는 파일이 들어가 있음 
				//반드시 초기화를 시켜서 지워줄것!!!  안그럼 Action단에서 에러발생!
				$("#uploadfile").val(""); //기존파일 초기화
				$("#now-file-size").val(0); //기존파일사이즈 초기화 
			}else{ // 첨부가능
				$("#now-file-size").val(size);
				$("#file-name").text(filename);
				$("#close_btn").css("display","inline-block");
			}
					
					
		}
	});
	$(document).on("click","#close_btn",function(){
		$("#uploadfile").replaceWith($("#uploadfile").clone(true));
		$("#uploadfile").val("");
		$("#file-name").text("선택된 파일 없음");
		$("#close_btn").css("display","none");
	});  
</script>
</head>
<body id="board_insert">
	<div id="con_wrap">
		<section class="index_section">
			<div class="section_con">
				<ul class="index_sec_ul">
					<li class="index_li"><a href="#">COMMUNITY</a></li>
					<li class="index_li"><a href="#">자유게시판</a></li>
					<li class="index_li"><a href="#">게시글 수정</a></li>
				</ul>
			</div>
		</section>
	</div>
	
	<form  id = "frm_regist" name ="frm_regist" action="boardUpadteplay.bizpoll?bno=${boardview.bno}" method="POST" enctype="multipart/form-data">
	<div id="b_insert_wrap">
		<div id="insert_name"><h2>자유게시판</h2></div>
		<div id="insert_fst">
			<div id="insert_ct">분류</div>
			<select id="insert_category">
					<option selected="selected">카테고리</option>
					<option>잡담</option>
					<option>상세리뷰</option>
					<option>정보</option>	
				</select>
				<div id="insert_title">
				<span>제목</span><input type="text" name ="title"id="input_title" value="${boardview.title}">
			</div>
			<div id="insert_writer">
				<span>작성자</span><input type="text" id="input_writer" name="writer" value="${sessionScope.loginUser.id}" readonly="readonly"></div>
			<div class="error">필수정보입니다. 제목을 입력하세요</div>
		</div>
		<div id="insert_scd">
			<div id="insert_content">내용</div>
			<div class="insert_textarea"><textarea rows="15" cols="150" id="content" name="content">${boardview.content}</textarea></div>
		</div>
		<div id="insert_thr">
			<input type="file" name="uploadfile" id="uploadfile" style="display:none;">
			<input type="button" class="btn btn-file" value="파일선택">
			<span class="file" id="file-name" style="height:29px; border:none;">${boardview.filename}</span>
			<i class="fa fa-close" id="close_btn" style="display:none; with:10px;"></i>
			<input type="hidden" id="now-file-name" name="now-file-name">
			<input type="hidden" id="now-file-size" name="now-file-size">
		</div>
		<div id="insert_four">
			<button type="submit" id="btn_insert">게시글 수정</button>
		</div>
	</div>
	</form>	
		<div class="clr"></div>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: oEditors,
			elPlaceHolder: "content",
			sSkinURI:"${path}/smarteditor/SmartEditor2Skin.html",
			fCreator: "createSEditor2"
		});
		
	</script>
</body>
</html>
<%@ include file = "../include/footer.jsp" %> 