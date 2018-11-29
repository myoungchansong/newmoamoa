<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="include/include.jsp" %> 
<%@ include file ="include/header2.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

#hotellist{
	width: 70%;
	margin: 0px auto;
	padding-bottom: 100px;
}
#selectbox{
	width:100%;
	height: 50px;
	background: #FFFFFF;
	padding-top: 50px;
	border-bottom: 1px solid #BDBDBD;
}
#selectbox a{
	color: #757575;
	padding: 0px 20px;
	font-size: 15px;
	line-height: 50px;
/* 	border-bottom: 1px solid #BDBDBD; */
}
#hotelborder{
	border-bottom: 1px solid #BDBDBD;
	height: 727px;
}
.title_box{
	width: 1000px;
}
.title_box h2{
	padding-top: 25px;
	padding-left: 10px;
	font-size: 30px;
	color: #757575;
}
.title_box h3{
	padding-top: 4px;
    padding-left: 19px;
    font-size: 15px;
    color: #757575;
}
#border{
	width: 100%;
	height: 200px;
}
#title{
	width: 1000px;
	display: inline-block;
}
#title h1{
	padding: 10px 0 0 20px;
	display: inline-block;
}
#content{
	height: 150px;
	width: 1000px;
	display: inline-block;
}
#content p{
	display: inline-block;
	padding-left: 30px;
}
#list_img{
	position: relative;
	width: 225px;
	height: 225px;
	right: -1000px;
	top: -225px;
}
#img img{
	display: inline-block;
	width: 225px;
	height: 225px;
}
#hotelimg{
	 width: 100%;
	 height: 780px;
	 border-bottom: 1px solid #BDBDBD;
}
#hotelimg img{
	width: 500px;
    height: 210px;
	margin-left: 50px;
}
#wordC_sec_pos{
	display: inline-block;
    width: 500px;
    height: 282px;
    margin-left: 137px;
}
#wordC_sec_neg{
	display: inline-block;
    width: 500px;
    height: 282px;
    margin-left: 40px;
}
.wordcloudimg{
	display: inline-block;
}
.wordtype{
	font-size: 50px;
	font-weight: 400;
	color: #00BCD4;

}

.reviewtype{
	margin: 74px;
	color: #757575;
	font-size: 50px;
	font-weight: 500;
}
#hotelreview{
	height: 750px;
}
#wordcount{
	height: 750px;
	border-bottom: 1px solid #BDBDBD;
}
#scoregraph{
	height: 750px;
	border-bottom: 1px solid #BDBDBD;
}
</style>
<script type="text/javascript">
        window.onload = function () {
            $(".box").each(function () {
                // 개별적으로 Wheel 이벤트 적용
                $(this).on("mousewheel DOMMouseScroll", function (e) {
                    e.preventDefault();
                    var delta = 0;
                    if (!event) event = window.event;
                    if (event.wheelDelta) {
                        delta = event.wheelDelta / 120;
                        if (window.opera) delta = -delta;
                    } else if (event.detail) delta = -event.detail / 3;
                    var moveTop = null;
                    // 마우스휠을 위에서 아래로
                    if (delta < 0) {
                        if ($(this).next() != undefined) {
                            moveTop = $(this).next().offset().top;
                        }
                    // 마우스휠을 아래에서 위로
                    } else {
                        if ($(this).prev() != undefined) {
                            moveTop = $(this).prev().offset().top;
                        }
                    }
                    // 화면 이동 0.8초(800)
                    $("html,body").stop().animate({
                        scrollTop: moveTop + 'px'
                    }, {
                        duration: 800, complete: function () {
                        }
                    });
                });
            });
        }
    </script>
</head>
<body>
<section id="hotellist">
		<div id="selectbox">
			<a href="#">select</a>
			<a href="#">select</a>
			<a href="#">select</a>
			<a href="#">select</a>
		</div>
		
		<div id="hotelborder" class="box">
			<div class="title_box">
				<h2>TITLE</h2>
			</div>
			
			
			<div id="border">
			
				<div id="title">
					<h1>HotelName</h1>
				</div>
				
				<div id="content">
					<p>Content</p>
				</div>
				
				<div id="list_img">
					<img src="${path}/img/login.png"> 
				</div>
			</div>
		</div>
		
		
		<div id="hotelimg" class="box">
			<div class="title_box">
				<h2>WORDCLOUD</h2>
				<h3>_빅데이터 기반으로 리뷰 분석</h3>
			</div>
			<section id="wordC_sec_pos">
				<div class="wordcloudimg">
					<div class="wordtype">pos+</div>
					<img src="${path}/img/pos_059.png">
				</div>
			</section> 
			<section id="wordC_sec_neg">
				<div class="wordcloudimg">
					<div class="wordtype">neg-</div>
					<img src="${path}/img/neg_059.png">
				</div> 
			</section>
		</div>
		
		<div id="wordcount" class="box">
			<div id="wordcount_title">
				<h2>WORDCOUNT</h2>
			</div>
			<section id="wordcount_pos">
				<div class="wctype">pos+</div>
				<div class="wclist">
					<ul>
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
					</ul>
				</div>
			</section>
			<section id="wordcount_neg">
				<div class="wctype">neg-</div>	
				<div class="wclist">
					<ul>
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
					</ul>
				</div>
			</section>
		</div>
		
		<div id="scoregraph" class="box">
			<div calss="title_graph">
				<h2>강남구 호텔 평점 비교 그래프</h2>
			</div id="img_graph">
			<div id=""><img alt="" src=""></div>
		</div>
		
		<div id="hotelreview" class="box">
			<div class="title_box">
				<h2>DETAIL REVIEW</h2>
			</div>
			<div class="reviewtype"><i class="fa fa-plus"></i></div>
			<div class="reviewtype"><i class="fa fa-minus"></i></div>
		</div>
		
	</section>
</body>
</html>
<%@ include file= "include/footer.jsp" %>