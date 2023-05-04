<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<script src="http://localhost:9000/kyj_web_project/jQuery/jquery-3.6.4.min.js"></script>
	<script src="kobis_drop.js"></script>
	
	<style>
		table, th, td {
			border:1px solid tomato;
		}
		
		th {
			background:tomato;
			color:white;
		}
		
		td:first-child {
			font-weight:bold;
			text-align:right;
			padding-right:5px;
		}
		
		td:nth-child(2), td:nth-child(3) {
			padding:0px 10px;
		}
		
		td:nth-child(4), td:last-child {
			text-align:right;
			padding-right:5px;
		}
		
		span, #day, #date, button {
			margin:10px 5px;
		}
		
		#select {
		
		
		}
	</style>

</head>


<body>
	<h1>KOBIS 영화 박스 오피스</h1>
	<div id="d1">
		<span>박스오피스 선택</span>
		<select id="kselect">
			<option value='defult'>선택</option>
			<option value='day'>일별</option>
			<option value='week'>주간</option>
		</select>
		
		<input type="text" placeholder='날짜입력 예)20230504' id='date'></input>
		<button id='btnKobis'>실행</button>
		
	</div>
</body>
</html>