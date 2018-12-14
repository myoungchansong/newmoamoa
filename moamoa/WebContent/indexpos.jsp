<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta charset="utf-8" />
<title>Insert title here</title>
<style>
    @font-face {
        font-family: 'overwatch';
        src: url('fonts/koverwatch.woff2');
    }
    *, body{
    z-index: 99;
    }
    
</style>

</head>
<body>
    <script src="https://rawgit.com/jasondavies/d3-cloud/master/build/d3.layout.cloud.js" type="text/JavaScript"></script>
 <script src="https://d3js.org/d3.v3.min.js"></script>
    <script>
    var width = 100,
            height = 100

        var svg = d3.select("body").append("svg")
            .attr("width", width)
            .attr("height", height);
        d3.csv("wordcloud/${pos}", function (data) {
            showCloud(data)
            setInterval(function(){
                 showCloud(data)
            },2000) 
        });
        //scale.linear: 선형적인 스케일로 표준화를 시킨다. 
        //domain: 데이터의 범위, 입력 크기
        //range: 표시할 범위, 출력 크기 
        //clamp: domain의 범위를 넘어간 값에 대하여 domain의 최대값으로 고정시킨다.
        wordScale = d3.scale.linear().domain([0, 100]).range([0, 1000]).clamp(true);
       
        var svg = d3.select("svg")
                    .append("g")
                    .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")")

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
                    .style("fill","#003399")
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
        </script>
</body>
</html>