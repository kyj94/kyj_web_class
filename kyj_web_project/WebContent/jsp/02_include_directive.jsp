<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- html 주석 : 웹 브라우저에서 실행 -->
	<%-- jsp 주석 : 톰캣이 실행 --%>
	
	<%-- 파일 include --%>
	<%@ include file="test.html" %>
	
	<hr>
	<%@ include file="test.jsp" %> <%-- 소스 코드가 그대로 include 된 후 컴파일 실행 --%>
	<jsp:include page="test.jsp" /> <%-- 컴파일된 클래스 파일 실행결과가 include 됨 --%>
	
	<hr> <%-- 정대경로는 호출 안됨 --%>
	<%-- <%@ include file="http://localhost:9000/kyj_web_project/jsp/test.jsp" %>
	<jsp:include page="http://localhost:9000/kyj_web_project/jsp/test.jsp" /> --%>
	
	<hr>
	<iframe src="test.html" width="100%" height="100px"></iframe>
</body>
</html>