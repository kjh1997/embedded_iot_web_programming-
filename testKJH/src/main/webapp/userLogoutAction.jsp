<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

<%
	
	session.invalidate();
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그아웃 완료')");
	script.println("location.href = 'index.jsp';");
	script.println("</script>");
%>

