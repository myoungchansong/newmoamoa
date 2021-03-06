<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="include.jsp" %> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
      margin: 0;
      padding: 0;
      text-decoration: none;
      list-style: none;
}
#footerdiv{
	background: #B2EBF2;
	width: 100%;
	height: 223px;
}
#email{
	width: 500px;
	margin: 0px auto;
	color: white;
	font-size: 20px;
	text-align: center;
	padding-top: 30px; 
}
#team{
	font-weight: bold;
	color: white;
	font-size: 15px;
	margin: 0px auto;
	width: 500px;
	text-align: center;
	margin-top: 30px; 
	
}
#icon{
	margin: 0px auto;
	margin-top: 10px;
    width: 570px;
    text-align: center;
}

#icon img{
	margin-left: 30px;
	cursor: pointer;
}
#logo_agoda{
	width: 100px;
    height: 40px;
}
#logo_booking{
	width: 133px;
    height: 31px;
}
#logo_expedia{
	width: 100px;
    height: 30px;
}
#logo_hotelscom{
	width: 100px;
    height: 64px;
}

@media(max-width: 700px) {
	#team{
		width: 400px;
	}
	#email{
		width: 400px;
	}
	#icon img{
		margin: 0px;
		margin-left: 20px;
		width: 15%;
		float: left;
	}
}
</style>
<script type="text/javascript">
	$(document).on("click", ".link",function(){
		var src = $(this).attr("link");
		window.open(src);
	});
</script>


</head>

<body>
	<footer>
		<div id="footerdiv">
				<div id="email">You'll travel with the wind MoaMoaTeam</div>
				<div id="team">
						All rights herein © 2018 MoaMoa Company Pte. Ltd., All Rights Reserved.<br>
						
				</div>
				<div id="icon">
					<img src="${path}/img/agoda.png" id="logo_agoda" link="https://www.agoda.com" class="link"> 
					<img src="${path}/img/booking.png" id="logo_booking" link="https://www.booking.com" class="link">
					<img src="${path}/img/expedia.png" id="logo_expedia" link="https://www.expedia.co.kr" class="link">
					<img src="${path}/img/hotelscom.png" id="logo_hotelscom" link="https://kr.hotels.com" class="link">
				</div>
				
		</div>
	</footer>
</body>
</html>