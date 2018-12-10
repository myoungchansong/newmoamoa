<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="include/include.jsp" %> 
<%@ include file ="include/header.jsp" %> 
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
	height: 500px;
	margin-top: 100px;
	 margin-bottom: 100px; 
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
    height: 450px;
    float: right;
    top: -120px;
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
	height:804px;
	border-bottom: 1px solid #BDBDBD;
	background-color: rgba(33,33,33,0.4);
	padding: 0px 80px 100px;
}
#allscoregraph{
	height:804px;
	border-bottom: 1px solid #BDBDBD;
	/* background-color: rgba(33,33,33,0.4); */
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
	background-image: url(img/wcbgimg.jpg);
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
	background-image: url(img/h_allbgimg.png);
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
	width: 100%;
    margin-top: 20px;
    height: 90%;
}
.graphwrap img{
	width: 96%;
    height: 86%;
    margin: 5% auto;
}
.graphimg{
	width: 96%;
    height: 86%;
    margin: 5% auto;
}
/*top 버튼  */
button#mybtn{
		display: none;
		position: fixed;
		bottom: 20px;
		right:30px;
		z-index: 99;
		font-size: 18px;
		border: 1px solid #6799FF;
		outline: none;
		background-color: white;
		color: #6799FF;
		cursor: pointer;
		padding: 15px;
		border-radius: 7px;
	}
	button#mybtn:hover{
		background-color: #B2EBF4;
		color:white;
	}
	.rpbox{
		display: inline-block;
	    width: 87%;
	    height: 220px;
	    margin-left: 95px;
	    border: 1px solid white;
	    box-sizing: border-box;
    	font-size: 20px;
	}
	.rpcontent{
		display: inline-block;
	    width: 100%;
	    height: 100%;
	    padding: 24px;
	    box-sizing: border-box;
		color: white;
	}.fa{color: white;}
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
				<a href="#allscoregraph">ALL&GRAPH</a>
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
					    <th>Value</th>
					  </tr>
					  <tr>
					    <td>1</td>
					    <td>위치</td>
					    <td>20</td>
					  </tr>
					  <tr>
					    <td>2</td>
					    <td>이용</td>
					     <td>17</td>
					  </tr>
					  <tr>
					    <td>3</td>
					    <td>조식</td>
					     <td>14</td>
					  </tr>
					  <tr>
					    <td>4</td>
					    <td>친절</td>
					     <td>11</td>
					  </tr>
					  <tr>
					    <td>5</td>
					    <td>경복궁</td>
					     <td>8</td>
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
					    <th>Value</th>
					  </tr>
					  <tr>
					    <td>1</td>
					    <td>조식</td>
					    <td>20</td>
					  </tr>
					  <tr>
					    <td>2</td>
					    <td>수영장</td>
					    <td>16</td>
					  </tr>
					  <tr>
					    <td>3</td>
					    <td>직원</td>
					    <td>13</td>
					  </tr>
					  <tr>
					    <td>4</td>
					    <td>호텔</td>
					    <td>10</td>
					  </tr>
					  <tr>
					    <td>5</td>
					    <td>객실</td>
					    <td>5</td>
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
				<div id="chart_div" class="graphimg"style="width:1200px; height: 700px;"></div>
				
				<%-- <div class="graphwrap">
					<img alt="" src="${path}/img/scoreavg.png">
				</div> --%>
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
				<div class="reviewtype">
					<i class="fa fa-plus"></i>
					<div class="rpbox">
						<div class="rpcontent">&nbsp;객실내부 청소는 깔끔했어요</div>
					</div>	
				</div>
				<div class="reviewtype">
					<i class="fa fa-minus"></i>
					<div class="rpbox">
						<div class="rpcontent">&nbsp;안내데스크에서 신관인지  본관인지 안내가 없어 왔다갔다해서 불편했어요</div>
					</div>	
				</div>
			</div>
		</section>
			
		
	</div>
	<button id="mybtn">Top</button>
</body>
<script type="text/javascript">
$(document).ready(function(){
	$(window).scroll(function(){
		if($(document).scrollTop()>20){
			$("#mybtn").css("display","block");
		}else{
			$("#mybtn").css("display","none");
		}
	});
	$(document).on("click","#mybtn",function(){
		$(document).scrollTop(0);
		$("html,body").animate({scrollTop:0},1000);
	});
});
</script>
<!--Load the AJAX API-->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);

	
	function drawVisualization(){
		var data = google.visualization.arrayToDataTable([
	         ['Element', '평점', { role: 'style', }],
	         ['성동구', 8.51, '#8041D9'],            // RGB value
	         ['구로구', 8.27, '#8041D9'],            // English color name
	         ['강서구', 8.27, '#8041D9'],
	         ['마포구', 8.22, '#8041D9'],
	         ['동작구', 8.21, '#8041D9'],
	         ['금천구', 8.19, '#8041D9'],
	         ['중구', 8.14, '#8041D9'],
	         ['송파구', 8.13, '#8041D9'],
	         ['종로구', 7.99, '#8041D9'],
	         ['용산구', 7.97, '#8041D9'],
	         ['성북구', 7.96, '#8041D9'],
	         ['강남구', 7.91, '#8041D9'],
	         ['영등포구', 7.86, '#8041D9'],
	         ['광진구', 7.85, '#8041D9'],
	         ['서대문구',7.85, '#8041D9'],
	         ['강북구', 7.63, '#8041D9'],
	         ['서초구', 7.61, '#8041D9'],
	         ['관악구', 7.46, '#8041D9'],
	         ['은평구', 7.39, '#8041D9'],
	         ['동대문구', 7.31, '#8041D9'],
	      ]);

		var options= {
				title:'서울시 구별 3-5성급 호텔 평점 평균',
				vAxis: {},
				hAxis: {},
				seriesType :'bars',
				series: {10: {type: 'line'}},
				colors : ['#8041D9'],
				
		};
		var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
		chart.draw(data, options);

	}


</script>
</html>
<%@ include file= "include/footer.jsp" %>