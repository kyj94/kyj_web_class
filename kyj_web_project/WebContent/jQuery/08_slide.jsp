<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<style>
		div {
			text-align:center;
			width:500px;
		}
		
		div#flip {
			height:30px;
			background:#f2f2f2;
			border:1px solid gray;
		}
		
		div#content {
			height:250px;
			background:#f2f2f2;
			border:1px solid gray;
			display:none;
		}
		
	</style>
	
	<script src="http://localhost:9000/kyj_web_project/jQuery/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#flip").click(function(){
				$("#content").slideToggle(500, function(){
					test();
				});
			});
			
			/* $("#flip").click(function(){
				$("#content").slideUp();
			});
			
			$("#flip").click(function(){
				$("#content").slideDown();
			}); */
			
		});
		
		function test() {
			alert("test 호출 완료");
		}
	</script>
</head>


<body>
	<h1>slideUp / Down</h1>
	<div id="flip">여기를 눌러주세요~</div>
	<div id="content">내용</div>
</body>
</html>