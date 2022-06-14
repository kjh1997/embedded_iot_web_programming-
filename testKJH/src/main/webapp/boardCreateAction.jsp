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
	request.setCharacterEncoding("utf8");
	System.out.println(board.getTitle() + board.getContents() );
	LocalDate now = LocalDate.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	String formattedString = now.format(formatter);
	System.out.println("date : "+ now);
	int alive = 1;
	String id = (String)session.getAttribute("id");
	System.out.print(dao.createBoard(board.getTitle(), board.getContents(), id, formattedString , alive, board.getType(), board.getPn(), board.getContentType()));

	String contentType = null;
	if (request.getParameter("contentType")!= null){
		contentType=(String) request.getParameter("contentType");	
	}
	
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('작성완료')");
	if(contentType.equals("peo")){
		script.println("location.href = 'boardView2.jsp';");
	}else{
		script.println("location.href = 'boardView.jsp';");
	}
	script.println("</script>");
	script.close();
	return;


	
%>