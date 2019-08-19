<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>google chart API</title>

<!-- <script src="https://code.jquery.com/jquery-latest.js"></script> -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

google.charts.load('current', {'packages': ['line']});
google.charts.setOnLoadCallback(drawChart1);

function drawChart1() {

	var data = new google.visualization.DataTable();
	data.addColumn('string', 'Day');
	data.addColumn('number', '방문자 수');
	data.addColumn('number', '회원가입 수');

	data.addRows([
		[before[6], userVisitCnt[6], userRegCnt[6]],
		[before[5], userVisitCnt[5], userRegCnt[5]],
		[before[4], userVisitCnt[4], userRegCnt[4]],
		[before[3], userVisitCnt[3], userRegCnt[3]],
		[before[2], userVisitCnt[2], userRegCnt[2]],
		[before[1], userVisitCnt[1], userRegCnt[1]],
		[today, userVisitCnt[0], userRegCnt[0]]
	]);

	var options = {
		legend : {position: 'bottom'}, // 범례 위, 아래 지원 X
		chart: {
			title: '사용자 통계',
			subtitle: '일일 방문자 및 회원가입 수'
		},
		series: {
	        0: {targetAxisIndex: 0},
	        1: {targetAxisIndex: 1}
    	},
    	vAxes: {
			0: {viewWindow : {max : max_visit + 4}},
			1: {viewWindow : {max : max_reg + 4}}
		},
		vAxis:{
			gridlines: {count: 0},

		},
		hAxis: {
			gridlines: {count: 2}
		},
		colors: ['#620017','#0066ff'],
	};

	var chart = new google.charts.Line(document.getElementById('chart1'));

	chart.draw(data, google.charts.Line.convertOptions(options));
}

	var today = new Date(); // 오늘 날짜
	var before = new Array(); // 이전 날짜 배열
	var userVisitCnt = new Array(7); // 방문자 수 배열
	var userRegCnt = new Array(7); // 가입자 수 배열

	for (var i = 1; i < 7; i++) { // 1주일전까지 날짜 구하기
		
		before[i] = new Date(today.getTime() - (i * 24 * 60 * 60 * 1000));
		// ex) before[1] = 1일전 , before[2] = 2일전
		before[i] = before[i].getDate() + '일';
	}
	
	today = today.getDate() + '일'; // 오늘 날짜에서 '일'만

	// 배열에 방문자 수 넣기
	$.ajax({
		type : 'post',
		url : '/admin_weekUserVisit.do',
		dataType: "json",			
		success : function(data) {
			
			console.log(data);
			
			for (var i in data) {
				userRegCnt[i] = i;
			}
		},
		error: function() {
			
			alert('ajax 에러!');
		}
	})

	// 배열에 가입자 수 넣기
	$.ajax({
		type : 'post',
		url : '/admin_weekUserReg.do',
		dataType: "json",			
		success : function(data) {
			
			console.log(data);
			
			for (var i in data) {
				userRegCnt[i] = i;
			}
		},
		error: function() {
			
			alert('ajax 에러!');
		}
	})

	var max_visit = 0; // 방문자 수 최대
	var max_reg = 0; // 가입자 수 최대
	var weekUserVisit = 0; // 최신 1주일간 방문자 수
	var weekUserReg = 0; // 최신 1주일간 가입자 수

	for (var i = 0; i < 7; i++) { // 1주일간 방문자수 더하기
		weekUserVisit += userVisitCnt[i];
		if (max_visit < userVisitCnt[i])
			max_visit = userVisitCnt[i];
	}

	for (var i = 0; i < 7; i++) { // 1주일간 가입자수 더하기
		weekUserReg += userRegCnt[i];
		if (max_reg < userRegCnt[i])
			max_reg = userRegCnt[i];
	}
	


	
</script>
</head>
<body>
	<div id="chart1"></div>
</body>
</html>