<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="include.jsp" %> 
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
	height: 250px;
}
#email{
	width: 500px;
	margin: 0px auto;
	color: white;
	font-size: 20px;
	text-align: center;
	padding-top: 20px; 
}
#team{
	font-weight: bold;
	color: white;
	font-size: 20px;
	margin: 0px auto;
	width: 500px;
	text-align: center;
	margin-top: 40px; 
	
}
#icon{
	margin: 0px auto;
	width: 500px;
	text-align: center;
	margin-top: 50px; 
}
#icon i{
	color: white;
	font-size: 50px;
	margin-left: 50px;
	
}
</style>
</head>

<body>
	<footer>
		<div id="footerdiv">
				<div id="email">Have a question? Email us at moamoa@gmail.com</div>
				<div id="icon">
					<i class ="fa fa-user"></i>
					<i class ="fa fa-user"></i>
					<i class ="fa fa-user"></i>
					<i class ="fa fa-user"></i>
				</div>
				<div id="team">You'll travel with the wind MoaMoaTeam</div>
		</div>
	</footer>
</body>
</html>