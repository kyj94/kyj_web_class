<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.mycgv_jsp.vo.MemberVo" %>
<%@ page import = "com.mycgv_jsp.dao.MemberDao" %>

<jsp:useBean id="memberVo" class="com.mycgv_jsp.vo.MemberVo" />
<jsp:setProperty property = "*" name = "memberVo" />

<%
	MemberDao memberDao = new MemberDao();
	int result = memberDao.insert(memberVo);
	if(result == 1) {
		out.write("회원가입 성공");
	}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><%= memberVo.getId() %></li>
		<li><%= memberVo.getPass() %></li>
		<li><%= memberVo.getName() %></li>
		<li><%= memberVo.getGender() %></li>
		<li><%= memberVo.getEmail() %></li>
		<li><%= memberVo.getAddr() %></li>
		<li><%= memberVo.getTel() %></li>
		<li><%= memberVo.getPnumber() %></li>
		<li><%= memberVo.getHobbyList() %></li>
		<li><%= memberVo.getIntro() %></li>
	</ul>

</body>
</html>