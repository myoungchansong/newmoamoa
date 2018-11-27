<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="include/include.jsp" %> 
     <%@ include file ="include/header.jsp" %> 
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
	font-family: sans-srif;
}

body {
	background: #00BCD4;
}

#mainimg {
	height: 200px;
	width: 200px;
	margin: 0px auto;
	display: block;
	margin-top: 50px;
}

#moa {
	color: white;
	font-size: 50px;
	font-weight: 500px;
	text-align: center;
	font-family:
}
#mapimg{
	height: 300px;
	width: 400px;
	margin: 50px auto;
	display: block;
	}

/*===========seach===============================================  */
#search{
	width: 600px;
	height: 100px;
	margin: 10px auto;
}
.box{
	position:relative;
	top: 50%;
	left: 50%;
	width:500px;
	transform: translate(-50%, -50%);
}
input{
	position: relative;
	display: inline-block;
	font-size:20px;
	box-sizing: border-box;
	transition: .5s;
}
#input-text{
	background: #fff;
	width: 430px;
	height: 50px;
	border: none;
	outline: none;
	padding: 0 25px;
	border-radius: 5px 0 0 5px;
}
#input-submit{
	position: relative;
	left:-5px;
	border-radius: 0 5px 5px 0;
	width: 60px;
	height: 50px;
	border: none;
	outline: none;
	cursor: pointer;
	background: #ffc107;
	color: #fff;
}
#input-submit:hover{
	background: #ff5722;

}

</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">



</script>
</head>
<body>
	<div>
		<img src="img/main.png" id="mainimg">
		<div id="moa">MoAMoA</div>
	</div>
	
	
	<div id="search">
		<div class="box">
			<form>
				<input type="text" name="" placeholder="Type..." id="input-text">
				<input type="submit" name="" value="GO" id="input-submit">
			</form>
			
		</div>
	</div>
	
	
	<div id="map">
		<img src="img/map.png" id="mapimg">
	</div>
	
	
	

	
	
</body>
<%@ include file ="include/footer.jsp" %>
</html>
