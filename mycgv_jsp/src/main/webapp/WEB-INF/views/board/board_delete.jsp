<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.mycgv_jsp.vo.BoardVo" %>     
<%@ page import = "com.mycgv_jsp.dao.BoardDao" %>   

<%	
	String bid = request.getParameter("bid"); // pk값 갖고오기
	BoardDao boardDao = new BoardDao();
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYCGV</title>
<link rel="stylesheet" href="http://localhost:9000/mycgv_jsp/css/mycgv_jsp.css">

<script src="http://localhost:9000/mycgv_jsp/js/jquery-3.6.4.min.js"></script>
<script src="http://localhost:9000/mycgv_jsp/js/mycgv_jsp_jquery.js"></script>

</head>
<body>
	<!-- header -->
	<!-- <iframe src="http://localhost:9000/mycgv_jsp/header.jsp"
			scrolling="no" width="100%" height="149px" frameborder=0></iframe> -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="board">
			<h1 class="title">게시판</h1>
			<form name="deleteForm" action="boardDeleteProc.jsp" method="post">
				<input type="hidden" name="bid" value="<%= bid %>">
				<table>
					<tr>
						<td><img src="http://localhost:9000/mycgv_jsp/images/trash.jpg"></td>
					</tr>
					<tr>					
						<td>정말로 삭제 하시겠습니까?</td>
					</tr>				
					<tr>
						<td colspan="2">
							<button type="submit" class="btn_style">삭제완료</button>
							<a href="board_content.jsp?<%= bid %>">
								<button type="button" class="btn_style">이전페이지</button></a>
							<a href="board_list.jsp">
								<button type="button" class="btn_style">리스트</button></a>
							<a href="http://localhost:9000/mycgv_jsp/index.jsp">
								<button type="button" class="btn_style">홈으로</button></a>
						</td>				
					</tr>
				</table>
			</form>
		</section>
	</div>
	
	<!-- footer -->
	<!-- <iframe src="http://localhost:9000/mycgv_jsp/footer.jsp"
			scrolling="no" width="100%" height="500px" frameborder=0></iframe> -->	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
















