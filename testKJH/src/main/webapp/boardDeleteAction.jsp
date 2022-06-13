<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="board" class="board.BoardDTO" scope="page"/>
<jsp:setProperty name="board" property="*"/>
<%@ page import="board.BoardDTO" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.time.LocalDate" %>
<%
String bid = request.getParameter("bno");

 	BoardDAO dao = new BoardDAO();
	request.setCharacterEncoding("utf8");
	System.out.println(bid);
	dao.deleteBoard(bid );

	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('삭제완료')");
	script.println("location.href = 'index.jsp';");
	script.println("</script>");
	script.close();
	return;


	
%>