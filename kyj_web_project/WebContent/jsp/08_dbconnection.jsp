<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*, java.util.ArrayList, com.beans.kyj_web_project.EmpVo, com.beans.kyj_web_project.EmpDao" %>

<%
	EmpDao empDao = new EmpDao();
	ArrayList<EmpVo> list = empDao.getList();
%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Emp 사원 정보</h1>
	<table border=1>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>부서코드</th>
		</tr>
		
		<% for(EmpVo emp : list) { %>
		<tr>
			<%-- <td><% out.write(emp.getEmpno()); %></td> --%>
			<td><%= emp.getEmpno() %></td>
			<td><%= emp.getEname() %></td>
			<td><%= emp.getDeptno() %></td>
		</tr>
		<% } %>
		
		
	</table>
</body>
</html>