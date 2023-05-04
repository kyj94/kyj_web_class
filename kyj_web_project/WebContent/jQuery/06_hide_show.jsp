<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
		<style>
		div#target {
			width:500px;
			height:100px;
			background:tomato;
			margin:20px;
		}
	</style>
	
	<script src="http://localhost:9000/kyj_web_project/jQuery/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#hide").click(function(){
				$("#target").hide(1000, function(){ 
					alert("hide 성공");
				});
			});
			
			$("#show").click(function(){
				$("#target").show(1000, function(){ 
					alert("show 성공");
				});
			});
			
			$("#toggle").click(function(){
				$("#target").toggle(1000, function(){ 
					alert("toggle 성공");
				});
			});
			
		});
	</script>

</head>

<body>
	<h1>Hide / Show / Toggle Method</h1>
	<div id="target"></div>
	<button type="button" id="hide">Hide</button>
	<button type="button" id="show">Show</button>
	<button type="button" id="toggle">Toggle</button>
</body>
</html>