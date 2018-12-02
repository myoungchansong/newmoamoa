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
.sec_cg{
	width: 70%;
	margin: 0px auto;
}
.hotellist{
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
}#selectbox a:hover{color:#212121;}
#hotelborder{
	border-bottom: 1px solid #BDBDBD;
	height: 700px;
}
.title_box{
	width: 100%;
}
.title_box h2{
	display: inline-block;
    padding-left: 10px;
    font-size: 30px;
    color: #fafafa;
    background-color: rgba(15, 3, 3, 0.54);
    margin-top: 25px;
}
.title_box span{
	padding-top: 4px;
    padding-left: 19px;
    font-size: 15px;
    color: #FFFFF9;
}
#border{
	width: 100%;
	height: 100px;
}
#title{
	width: 100%;
	display: inline-block;
}
#title h1{
	padding: 10px 0 0 20px;
	display: inline-block;
}
#content{
	height: 40px;
    width: 1000px;
    display: block;
}
#content p{
	display: inline-block;
    padding-left: 34px;
    padding-top: 5px;
}
#list_img{
	position: relative;
    width: 47%;
    height: 360px;
    float: right;
    top: 16px;
    display: inline-block;
    /* background-image: url(img/hotelimg.jpg);
    background-size: 100%;
    background-position: top; */
}
#list_img img{
	width: 100%;
	height: 100%;
}
#img img{
	display: inline-block;
	width: 225px;
	height: 225px;
}
#hotelimg{
	height: 804px;
    border-bottom: 1px solid #BDBDBD;
    background-color: rgba(33,33,33,0.4);
    padding: 0px 80px 100px;
}
#hotelimg img{
	width: 80%;
    height: 300px;
    margin-left: 50px;
    border-radius: 70px;
}
#wordC_sec_pos{
 	display: inline-block;
    width: 46%;
    height:100%;
    border-right: 1px solid #BDBDBD;
    padding-right: 20px;
}
#wordC_sec_neg{
	display: inline-block;
    width: 46%;
    height: 100%;
    margin-left: 44px;
    box-sizing: border-box;
}
.wordcloudimg{
	display: inline-block;
}
.wordtype{
	font-size: 60px;
    font-weight: 400;
    color: #fffffe;
    text-align: center;
    margin: 30px auto;
}

.reviewtype{
	margin: 74px;
	color: #757575;
	font-size: 50px;
	font-weight: 500;
}
#hotelreview{
	height: 804px;
    padding: 0px 80px 100px;
}
#allscoregraph{
	height:804px;
	border-bottom: 1px solid #BDBDBD;
	background-color: rgba(33,33,33,0.4);
	padding: 0px 80px 100px;
}
#sec_scoregraph{
	height:804px;
	border-bottom: 1px solid #BDBDBD;
	background-color: rgba(33,33,33,0.4);
	padding: 0px 80px 100px;
}
#summary_title{
    border-top: 2px solid #BDBDBD;
    display: inline-block;
    width: 50%;
    padding: 5px;
    font-size: 30px;
}
#summary{
	display: inline-block;
    height: 460px;
    width: 50%;
    padding-top: 10px;	
}
#summary p{margin-bottom:5px;}

.sec_bg{
	background-image: url(img/bgimg1.jpg);
	background-repeat: no-repeat;
	background-size: cover;
    opacity: 0.7;
}
#customers {
    border-collapse: collapse;
    width: 80%;
    margin: 30px 0 0 50px;
    text-align: center;
    background-color: #bee1e6d9;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    background-color: #4c95afb0;
    color: white;
    text-align: center;
}
/*부정 워드카운트 */
#customers_neg {
    border-collapse: collapse;
    width: 80%;
    margin: 30px 0 0 50px;
    text-align: center;
    background-color: #e6949cc9;
}

#customers_neg td, #customers_neg th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers_neg tr:nth-child(even){background-color: #f2f2f2;}

#customers_neg tr:hover {background-color: #ddd;}

#customers_neg th {
    padding-top: 12px;
    padding-bottom: 12px;
    background-color: #d94c4ced;
    color: white;
    text-align: center;
}
.sec_gbg{
	background-image: url(img/graphimg.jpg);
	background-repeat: no-repeat;
	background-size: cover;
    opacity: 0.7;
}
.sec_gbg2{
	background-image: url(img/graphimg2.jpg);
	background-repeat: no-repeat;
	background-size: cover;
    opacity: 0.7;
}
.sec_rvbg{
	background-image: url(img/rvimg.jpg);
	background-repeat: no-repeat;
	background-size: cover;
    opacity: 0.7;
}
.wc_title{
	width: 95%;
	color: white;
	font-size: 25px;
	padding: 20px 0 0 48px;
}
.graphwrap{
	width: 70%;
	height: 50%;
}
.graphwrap img{
	width: 141%;
    height: 156%;
    background-color: rgba(249, 249, 249, 0.9);
    margin: 5% auto;
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
	<div id="allwrap">
		<section class="sec_cg">
			<div id="selectbox">
				<a href="#hotelborder">HOTEL INFO</a>
				<a href="#hotelimg">DATA VISUALIZATION</a>
				<a href="#scoregraph">ALL&GRAPH</a>
				<a href="#sec_scoregraph">PART&GRAPH</a>
				<a href="#hotelreview">DETAIL REVIEW</a>
			</div>
		</section>
		<!--호텔 이름, 정보, 사진  -->	
		<section class="hotellist" class="box">
			<div id="hotelborder">
				<div class="title_box">
					<h2>HOTEL INFORMATION&nbsp;</h2>
				</div>
				<div id="border">
					<div id="title">
						<h1>서머셋팰리스 서울</h1>
					</div>
					<div id="content">
						<p>_서울, 종로구 율곡로2길 7</p>
					</div>
					<div id="list_img">
						<img src="${path}/img/somersethotel.jpg">
					</div>
				</div>
				<div id="summary_title">Hotel Info_</div>
				<div id="summary">
					<p>&nbsp;서울 중심부의 강북에 위치한 서머셋 팰리스 서울은 주방 시설이 완비된 서비스 아파트, 옥상 수영장, 24시간 영업하는 편의점, 라운지, 무료 주차장을 보유하고 있습니다.
					서머셋 팰리스의 각 아파트는 디자이너 가구, 케이블 TV, 홈 엔터테인먼트 시스템, 세탁기, 건조기를 갖추고 있습니다.
					머무는 동안 완비된 피트니스 센터, 당구장, 옥상 온수 욕조, 정원과 같은 레크리에이션 시설을 이용해 보십시오. 레스토랑과 카페에서 식사하실 수 있습니다.
					서머셋 팰리스에서 도보 거리에 지하철 안국역을 비롯해 식당가, 쇼핑가, 유흥가가 밀집한 인사동과 종로가 있습니다. 서머셋 팰리스 서울에서 지하철 5호선 광화문역까지는 도보로 5분 이내가 소요됩니다. 
					종로구 지역은 문화, 도시 산책, 관광 테마 여행을 원하시는 분께 강력 추천하는 지역입니다.
					서울 시내 인기 지역에 위치! 이 지역 다른 숙소의 위치보다 평이 좋습니다.</p>
				</div>
			</div>
		</section>
		<!-- 빅데이터 분석 : 워드클라우드,텍스트마이닝 -->	
		<section class="box sec_bg">
			<div id="hotelimg" class="hotellist">
				<div class="title_box">
					<h2>DATA VISUALIZATION<span>_빅데이터 기반 리뷰 분석</span>&nbsp;</h2>
				</div>
				<section id="wordC_sec_pos">
					<div class="wordcloudimg">
						<div class="wordtype">- 긍정 -</div>
						<img src="${path}/img/posimg.png">
					</div>
					<div class="wc_title">Word Count_</div>
					<table id="customers">
					  <tr>
					    <th>Rank</th>
					    <th>Word</th>
					  </tr>
					  <tr>
					    <td>1</td>
					    <td>위치</td>
					  </tr>
					  <tr>
					    <td>2</td>
					    <td>이용</td>
					  </tr>
					  <tr>
					    <td>3</td>
					    <td>조식</td>
					  </tr>
					  <tr>
					    <td>4</td>
					    <td>친절</td>
					  </tr>
					  <tr>
					    <td>5</td>
					    <td>경복궁</td>
					  </tr>
				    </table>
				</section> 
				<section id="wordC_sec_neg">
					<div class="wordcloudimg">
						<div class="wordtype">- 부정 -</div>
						<img src="${path}/img/negimg.png">
					</div>
					<div class="wc_title">Word Count_</div>
					<table id="customers_neg">
					  <tr>
					    <th>Rank</th>
					    <th>Word</th>
					  </tr>
					  <tr>
					    <td>1</td>
					    <td>조식</td>
					  </tr>
					  <tr>
					    <td>2</td>
					    <td>수영장</td>
					  </tr>
					  <tr>
					    <td>3</td>
					    <td>직원</td>
					  </tr>
					  <tr>
					    <td>4</td>
					    <td>호텔</td>
					  </tr>
					  <tr>
					    <td>5</td>
					    <td>객실</td>
					  </tr>
				    </table> 
				</section>
			</div>
		</section>

		<!--평점평균 그래프  -->
		<section class="box sec_gbg">	
			<div id="allscoregraph" class="hotellist">
				<div class="title_box">
					<h2>ALL & GRAPH<span>_서울시 구별 호텔 평점 평균 비교 그래프</span>&nbsp;</h2>					
				</div>
				<div class="graphwrap">
					<img alt="" src="${path}/img/allhotelavg.png">
				</div>
			</div>
		</section>
		<section class="box sec_gbg2">	
			<div id="sec_scoregraph" class="hotellist">
				<div class="title_box">
					<h2>PART & GRAPH<span>_종로구 호텔 평점 평균 비교 그래프</span>&nbsp;</h2>
				</div>
				<div class="graphwrap">
					<img alt="" src="${path}/img/sechotelavg.png">
				</div>
			</div>
		</section>
			<!--상세리뷰 -->
		<section class="box sec_rvbg">
			<div id="hotelreview" class="hotellist">
				<div class="title_box">
					<h2>DETAIL REVIEW&nbsp;</h2>
				</div>
				<div class="reviewtype"><i class="fa fa-plus"></i></div>
				<div class="reviewtype"><i class="fa fa-minus"></i></div>
			</div>
		</section>
			
		
	</div>
</body>
</html>
<%@ include file= "include/footer.jsp" %>