<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.mycgv_jsp.dao.MemberDao" %>
<%@ page import = "com.mycgv_jsp.vo.MemberVo" %>

<jsp:useBean id="memberVo" class="com.mycgv_jsp.vo.MemberVo" />
<jsp:setProperty property="*" name="memberVo" />

<%
	MemberDao memberDao = new MemberDao();
	int result = memberDao.loginCheck(memberVo);
	if (result == 1) {
		/* response.sendRedirect("http://localhost:9000/mycgv_jsp/index.jsp"); */
		out.write("<script>");
		out.write("alert('로그인 성공');");
		out.write("location.href = 'http://localhost:9000/mycgv_jsp/index.jsp'");
		out.write("</script>");
	} else {
		//로그인 실패
		out.write("<script>");
		out.write("alert('아이디 또는 패스워고시 다름니다');");
		out.write("location.href = 'http://localhost:9000/mycgv_jsp/login/login.jsp'");
		out.write("</script>");
	}
	
	
%>