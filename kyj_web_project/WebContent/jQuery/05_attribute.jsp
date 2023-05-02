<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="http://localhost:9000/kyj_web_project/jQuery/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function(){
			$("span").click(function(){
				let id = $(this).attr("id");
				alter(id);
				
				if(id == "event") {
					$("img").attr("src","../images/main_moviecollage.jpg");
				} else if (id == "logo") {
					$("img").attr("src","../images/h1_cgv.png");
				} else if (id == "trash") {
					$("img").attr("src","../images/trash.jpg");
					$("img").css("width", "30%");
				}
			});
				
				
				/* $("img").attr("src","../images/main_moviecollage.jpg"); */
			
			/* $("span#logo").click(function(){
				// 이미지 호출
				$("img").attr("src","../images/h1_cgv.png");
			});
			
			$("span#trash").click(function(){
				// 이미지 호출
				$("img").attr("src","../images/trash.jpg");
			}); */
		});
	</script>
	
	<style>
		span {
			padding:10px;
			background:tomato;
			cursor:pointer;
		}
	</style>
</head>


<body>
	<span id="event">이벤트</span>
	<span id="logo">로고</span>
	<span id="trash">휴지통</span>
	<hr>
	<img src="../images/h3_event.gif">
</body>
</html>