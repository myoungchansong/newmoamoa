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
	height: 200px;
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
	width: 500px;
	text-align: center;
	margin-top: 20px; 
}

#icon img{
	margin-left: 20px;
}
</style>
</head>

<body>
	<footer>
		<div id="footerdiv">
				<div id="email">You'll travel with the wind MoaMoaTeam</div>
				<div id="team">
						All rights herein © 2018 MoaMoa Company Pte. Ltd., All Rights Reserved.<br>
						
				</div>
				<div id="icon">
					<img src="${path}/img/agoda.png" style="height: 70px; width: 100px;"">
					<img src="${path}/img/booking.png" style="height: 35px; width: 100px;padding-bottom:18px;">
					<img src="${path}/img/expedia.png" style="height: 70px; width: 100px;">
					<img src="${path}/img/hotelscom.png" style="height: 70px; width: 100px;">
				</div>
				
		</div>
	</footer>
</body>
</html>