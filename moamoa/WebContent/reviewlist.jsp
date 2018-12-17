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
	/* 상단 nav  */
	.sec_cg{
		width: 70%;
		margin: 0px auto;
	}
	/*상단 nav menu  */
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
	}
	#selectbox a:hover{color:#212121;}
	
	/*각 section 내용 크기  */
	.hotellist{
		width: 70%;
		margin: 0px auto;	
		padding-bottom: 100px;
	}
	
	/* 각 섹션 제목 */
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
	/*워드클라우드섹션 배경 이미지 */
	.sec_bg{
		background-image: url(img/wcbgimg.jpg); 
		background-repeat: no-repeat;
		background-size: cover;
	    opacity: 0.7;
	}
	/*서울시 호텔 평균평점 그래프 섹션 배경이미지 */
	.sec_gbg{
		background-image: url(img/h_allbgimg.png);
		background-repeat: no-repeat;
		background-size: cover;
	    opacity: 0.7;
	}
	/*각 구내 호텔 평균평점 그래프 섹션 배경이미지 */
	.sec_gbg2{
		background-image: url(img/graphimg2.jpg);
		background-repeat: no-repeat;
		background-size: cover;
	    opacity: 0.7;
	}
	/*상세리뷰섹션 배경이미지  */
	.sec_rvbg{
		background-image: url(img/rvimg.jpg);
		background-repeat: no-repeat;
		background-size: cover;
	    opacity: 0.7;
	}
	
	/*호텔 정보 */
	#hotelborder{
		border-bottom: 1px solid #BDBDBD;
	    height: 570px;
	    margin-top: 100px;
	    margin-bottom: 30px;
	}
	/* 호텔 정보란 내용 */
	#border{
		width: 100%;
		height: 100px;
	}
	#title{  /*호텔 정보란 호텔이름 */
		width: 100%;
		display: inline-block;
	}
	#title h1{
		padding: 10px 0 0 20px;
		display: inline-block;
	}
	#content{ /* 호텔 주소 */
		height: 40px;
	    width: 1000px;
	    display: block;
	}
	#content p{
		display: inline-block;
	    padding-left: 34px;
	    padding-top: 5px;
	}
	#list_img{ /* 호텔 이미지 */
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
	/* 호텔 정보 summary */
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
	
	
	/* 워드클라우드 섹션 */
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
	
	#wordC_sec_pos{ /*워드클라우드 긍정 섹션  */
	 	display: inline-block;
	    width: 46%;
	    height:100%;
	    border-right: 1px solid #BDBDBD;
	    padding-right: 20px;
	}
	#wordC_sec_neg{ /*워드클라우드 부정 섹션  */
		display: inline-block;
	    width: 46%;
	    height: 100%;
	    margin-left: 44px;
	    box-sizing: border-box;
	}
	.wordcloudimg{
		display: inline-block;
	}
	.wordtype{ /*워드클라우드 긍정부정 제목란 */
		font-size: 60px;
	    font-weight: 400;
	    color: #fffffe;
	    text-align: center;
	    margin: 30px auto;
	}
	/*워드클라우드 긍정 창 */
	#wc_pos{
		width: 500px;
	    height: 316px;
	    background-color: #ffffff5e;
	    border-radius: 22px;
		
	}
	/*워드클라우드 부정 창 */
	#wc_neg{
		width: 500px;
	    height: 316px;
		background-color: #ffffff5e;
		margin-left: 42px;
		border-radius: 22px;
	}
	
	/*긍정 워드카운트 표 */
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
	
	/* 워드카운트 제목 */
	.wc_title{
		width: 95%;
		color: white;
		font-size: 25px;
		padding: 20px 0 0 48px;
	}
	
	
	/* 서울시전체 호텔 평균 평점 그래프 섹션 */
	#allscoregraph{
		height:804px;
		border-bottom: 1px solid #BDBDBD;
		/* background-color: rgba(33,33,33,0.4); */
		padding: 0px 80px 100px;
	}
	/* 구글차트  서울시 구별 호텔 평균 평점 */
	.graphimg{
		width: 96%;
	    height: 86%;
	    margin: 5% auto;
	}
	
	/* 각 구내 호텔 평균평점 그래프 섹션 */
	#sec_scoregraph{
		height:804px;
		border-bottom: 1px solid #BDBDBD;
		background-color: rgba(33,33,33,0.4);
		padding: 0px 80px 100px;
	}
	/* 구내 호텔 평점평균 그래프 */
	.graphwrap{
		width: 100%;
	    margin-top: 20px;
	    height: 90%;
	}
	.graphwrap img{
		width: 98%;
	    height: 95%;
	    margin: 5% auto;
	}
	
	/*상세리뷰 섹션 */
	#hotelreview{
		height:880px;
		border-bottom: 1px solid #BDBDBD;
		background-color: rgba(33,33,33,0.4);
		padding: 0px 80px 100px;
	
	}
	/*상세 리뷰 섹션 긍정 부정 리뷰창 */
	.reviewtype{
		color: #757575;
	    font-size: 50px;
	    font-weight: 500;
	    width: 100%;
	}

	/*긍정리뷰 전체 wrap  */
	.reviewWrap{
		width: 100%;
	}
	/*상세리뷰창box */
	.rpbox{
		display: inline-block;
	    width: 100%;
	    height: 728px;
	    border: 1px solid white;
	    box-sizing: border-box;
	    font-size: 20px;
	    overflow: scroll;
	}
	/*상세리뷰창 내용 */
	.rpcontent{
		display: inline-block;
	    width: 100%;
	    height: 26%;
	    padding: 24px;
	    box-sizing: border-box;
	    color: white;
	}
	/* 상세리뷰 제목,작성자란 */
	.rpctheader{
		display: block;
	    font-size: 18px;
	    font-weight: 500;
	    padding-bottom: 10px;
	    border-bottom: 1px solid white;
	}
	/* 상세리뷰 작성일,평점란 */
	.rpctheader2{
		display: block;
	    font-size: 18px;
	    font-weight: 500;
	    padding-bottom: 39px;
	}
	/*상세리뷰 작성자 글자크기 */
	.rpctwriter{
		display: inline-block;
	    font-size: 13px;
	    float: right;
	    line-height: 31px;
	}
	/*상세리뷰 제목 색 */
	.rpcttitle{
		display: inline-block;
		color: #e8f900;
	}
	/* 상세리뷰 평점 */
	.rpctscore{
	    margin-right: 20px;
		display: inline-block;
		float: right;
		font-size: 15px;
    	line-height: 32px;
	}
	/*상세리뷰 작성일 */
	.rpctdate{
		font-size: 15px;
	    display: inline-block;
	    float: right;
	    margin-right: 18px;
	    line-height: 32px;
	}
	/*상세리뷰 댓글 내용  */
	.rpct_content{
		font-size: 18px;
		padding: 10px;
	}
	/*상세리뷰 긍정 제목 */
	#reviewpos{
		display: inline-block;
	    font-size: 30px;
	    padding: 10px;
	    color: white;
	    width: 96%;
	    text-align: center;
	}
	/*상세리뷰 부정 제목 */
	#reviewneg{
		display: inline-block;
	    font-size: 30px;
	    padding: 10px;
	    color: white;
	    width: 100%;
	    text-align: center;
	}
	/* 상세리뷰 부정 wrap */
	._wrap{
		display: inline-block;
		width: 48%;
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
</style>


<script src="https://d3js.org/d3.v3.min.js" charset="utf-8" type="text/JavaScript"></script>
<script src="https://rawgit.com/jasondavies/d3-cloud/master/build/d3.layout.cloud.js" type="text/JavaScript"></script>

<script type="text/javascript"> 
	$(document).ready(function(){
		wc_neg();
		wc_pos(); 
	});
	 function wc_pos(){
		var flag= $("#hname").val();
		
		$.ajax({
			type :"post",
			url : "wordcloudpos.bizpoll",
			data: "hotelname="+flag,
			success:function(result){	
				var $wc_pos = $("#wc_pos");
				
				var width = $wc_pos.width(),
	            	height = $wc_pos.height();
				
		        var svg = 
		        	d3.select("#wc_pos").append("svg")
			            .attr("width", width)
			            .attr("height", height);
		        
			        d3.csv("wordcloud/"+result, function (data) {
			        	
			            showCloud(data)
			            setInterval(function(){
			                 showCloud(data)
			            },2000) 
			        });
		        //scale.linear: 선형적인 스케일로 표준화를 시킨다. 
		        //domain: 데이터의 범위, 입력 크기
		        //range: 표시할 범위, 출력 크기 
		        //clamp: domain의 범위를 넘어간 값에 대하여 domain의 최대값으로 고정시킨다.
		        wordScale = d3.scale.linear().domain([0, 100]).range([0, 1500]).clamp(true);
		       
		        var svg = d3.select("svg")
		                    .append("g")
		                    .attr("transform", "translate(" + (width / 2) + "," + (height / 2) + ")")
		                    
		        function showCloud(data) {
		            d3.layout.cloud().size([width, height])
		                //클라우드 레이아웃에 데이터 전달
		                .words(data)
		                .rotate(function (d) {
		                    return d.text.length > 3 ? 0 : 0;
		                })
		                //스케일로 각 단어의 크기를 설정
		                .fontSize(function (d) {
		                    return wordScale(d.frequency);
		                })
		                //클라우드 레이아웃을 초기화 > end이벤트 발생 > 연결된 함수 작동  
		                .on("end", draw)
		                .start();
	
		            function draw(words) {
		                var cloud = svg.selectAll("text").data(words)
		                //Entering words
		                cloud.enter()
		                    .append("text")
		                    .style("font-family", "overwatch")
		                    .style("fill","#000087")
		                    .style("fill-opacity", .5)
		                    .attr("text-anchor", "middle") 
		                    .attr('font-size', 1)
		                    .text(function (d) {
		                        return d.text;
		                    }); 
		                cloud
		                    .transition()
		                    .duration(600)
		                    .style("font-size", function (d) {
		                        return d.size + "px";
		                    })
		                    .attr("transform", function (d) {
		                        return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
		                    })
		                    .style("fill-opacity", 1); 
		            }
		        }		
			
				//$("#wc_pos").html(result);
			}
		});
	}

	function wc_neg(){
		var flag= $("#hname").val();
		$.ajax({
			type :"post",
			url : "wordcloudneg.bizpoll",
			data: "hotelname="+flag,
			success:function(result){
				var $wc_neg = $("#wc_neg");
				
				var width = $wc_neg.width(),
		        	height = $wc_neg.height();
			    var svg = d3.select('#wc_neg').append("svg")
			        .attr("width", width)
			        .attr("height", height);
			    d3.csv("wordcloud/"+result, function (data) {
			        showCloud(data)
			        setInterval(function(){
			             showCloud(data)
			        },2000) 
			    });
			    //scale.linear: 선형적인 스케일로 표준화를 시킨다. 
			    //domain: 데이터의 범위, 입력 크기
			    //range: 표시할 범위, 출력 크기 
			    //clamp: domain의 범위를 넘어간 값에 대하여 domain의 최대값으로 고정시킨다.
			    wordScale = d3.scale.linear().domain([0, 100]).range([0, 1500]).clamp(true);
			   
			    var svg = d3.select("svg")
			                .append("g")
			                .attr("transform", "translate(" + (width / 2) + "," + (height / 2) + ")")
			
			    function showCloud(data) {
			        d3.layout.cloud().size([width, height])
			            //클라우드 레이아웃에 데이터 전달
			            .words(data)
			            .rotate(function (d) {
			                return d.text.length > 3 ? 0 : 0;
			            })
			            //스케일로 각 단어의 크기를 설정
			            .fontSize(function (d) {
			                return wordScale(d.frequency);
			            })
			            //클라우드 레이아웃을 초기화 > end이벤트 발생 > 연결된 함수 작동  
			            .on("end", draw)
			            .start();
			
			        function draw(words) { 
			            var cloud = svg.selectAll("text").data(words)
			            //Entering words
			            cloud.enter()
			                .append("text")
			                .style("font-family", "overwatch")
			                .style("fill","#DB0000")
			                .style("fill-opacity", .5)
			                .attr("text-anchor", "middle") 
			                .attr('font-size', 1)
			                .text(function (d) {
			                    return d.text;
			                }); 
			            cloud
			                .transition()
			                .duration(600)
			                .style("font-size", function (d) {
			                    return d.size + "px";
			                })
			                .attr("transform", function (d) {
			                    return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
			                })
			                .style("fill-opacity", 1); 
			        }
			    }   	
//				$("#wc_neg").html(result);
			}
		});
	}
	
</script>


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
				
			<c:forEach items="${reviewListName}" var="hDto">
				<div id="border">
					<div id="title">
						<h1>${hDto.hotelname}</h1>
						<input type="hidden" value="${hDto.hotelname}" id="hname">
					</div>
					<div id="content">
						<p>_${hDto.hoteladdr}</p>
					</div>
					<div id="list_img">
						<img src="${hDto.hotelimg}">
					</div>
				</div>
				<div id="summary_title">Hotel Info_</div>
				<div id="summary">
					<p>&nbsp;${hDto.summary}</p>
				</div>
			</div>
		</c:forEach>
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
						 <div id="wc_pos"></div>
					</div>
					<div class="wc_title">Word Count_</div>
					<!--  긍정     -->
					<table id="customers">
					  <tr>
					    <th>Rank</th>
					    <th>Word</th>
					  </tr>
					  
		<c:forEach items="${hotelkeyword}" var="keyword">
					  <tr>
					    <td>1</td>
					    <td>${keyword.POS_1}</td>
					  </tr>
					  <tr>
					    <td>2</td>
					    <td>${keyword.POS_2}</td>
					  </tr>
					  <tr>
					    <td>3</td>
					    <td>${keyword.POS_3}</td>
					  </tr>
					  <tr>
					    <td>4</td>
					    <td>${keyword.POS_4}</td>
					  </tr>
					  <tr>
					    <td>5</td>
					    <td>${keyword.POS_5}</td>
					  </tr>
		  </c:forEach>
				    </table>
				</section> 
				<section id="wordC_sec_neg">
					<div class="wordcloudimg">
						<div class="wordtype">- 부정 -</div>
							<div id="wc_neg"></div>
					</div>
					<div class="wc_title">Word Count_</div>
					<table id="customers_neg">
					<!--  부정     -->
			<c:forEach items="${hotelkeyword}" var="keyword">
					  <tr>
					    <th>Rank</th>
					    <th>Word</th>
					  </tr>  
					  <tr>
					    <td>1</td>
					    <td>${keyword.NEG_1}</td>
					  </tr>
					  <tr>
					    <td>2</td>
					    <td>${keyword.NEG_2}</td>
					  </tr>
					  <tr>
					    <td>3</td>
					    <td>${keyword.NEG_3}</td>
					  </tr>
					  <tr>
					    <td>4</td>
					    <td>${keyword.NEG_4}</td>
					  </tr>
					  <tr>
					    <td>5</td>
					    <td>${keyword.NEG_5}</td>
					  </tr>
			   </c:forEach>
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
			
			</div>
		</section>
		<!--구내 호텔 평점평균 그래프  -->
		<section class="box sec_gbg2"> 	
			<div id="sec_scoregraph" class="hotellist">
			
				<div class="title_box">
					<h2>PART & GRAPH<span>_구내 호텔 평점 평균 비교 그래프</span>&nbsp;</h2>
				</div>
			
				<div class="graphwrap">
					<img src="${path}/scoregraph/${scoregraph}">
				</div>
				
			</div>
		</section>
		
		
			<!--상세리뷰 -->
		<section class="box sec_rvbg">
			<div id="hotelreview" class="hotellist">
				<div class="title_box">
					<h2>DETAIL REVIEW&nbsp;</h2>
				</div>

				<!--긍정리뷰  -->

				<div class="_wrap">
					<div id="reviewpos">긍정</div>
					<div class="reviewtype" id="review_pos" style="width: 90%; margin-left: 10%;">
						<div class="rpbox">
							<c:forEach items="${reviewListpos}" var="hDto">
								<div class="rpcontent">
									<div class="rpctheader">
										<div class="rpcttitle">| ${hDto.title}</div>
										<div class="rpctwriter">작성자 | ${hDto.writer}</div>
									</div>
									<div class="rpctheader2">
										<div class="rpctdate">작성일 | ${hDto.write_date}</div>
										<div class="rpctscore">평점 | ${hDto.score}</div>
									</div>
									<div class="rpct_content">&nbsp;${hDto.review_pos}</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

				<!--부정리뷰 -->

				<div class="_wrap">
					<div id="reviewneg">부정</div>
					<div class="reviewtype"  id="review_neg" style="width: 90%; margin: 0px 5%;" >
						<div class="rpbox">

							<c:forEach items="${reviewListneg}" var="hDto">
								<div class="rpcontent">
									<div class="rpctheader">
										<div class="rpcttitle">| ${hDto.title}</div>
										<div class="rpctwriter">작성자 | ${hDto.writer}</div>
									</div>
									<div class="rpctheader2">
										<div class="rpctdate">작성일 | ${hDto.write_date}</div>
										<div class="rpctscore">평점 | ${hDto.score}</div>
									</div>
									<div class="rpct_content">&nbsp;${hDto.review_neg}</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</section>
			
		
	</div>
	<button id="mybtn">Top</button>
</body>
<script type="text/javascript">

	/*TOP 버튼 */
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