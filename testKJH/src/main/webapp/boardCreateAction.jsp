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
 	BoardDAO dao = new BoardDAO();
	request.setCharacterEncoding("utf-8");
	System.out.println(board.getTitle() + board.getContents() );
	System.out.println("id : " +session.getAttribute("id"));
	System.out.println("id : " +session.getAttribute("id"));
	LocalDate now = LocalDate.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd LLLL yyyy");
	String formattedString = now.format(formatter);
	System.out.println("date : "+ now);
	int alive = 1;
	String id = (String)session.getAttribute("id");
	System.out.print(dao.createBoard(board.getTitle(), board.getContents(),id, formattedString , alive));

	
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('작성완료')");
	script.println("location.href = 'boardView.jsp';");
	script.println("</script>");
	script.close();
	return;


	
%>