<%@ include file="navbar.jsp"  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ page import="board.BoardDTO" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.ArrayList" %>

<%
BoardDAO test = new BoardDAO();
ArrayList<BoardDTO> list = test.getBoard();
request.setCharacterEncoding("UTF-8");
%>
<meta charset="UTF-8">
<div class="container">
			<header>
				<h1> 게시판</h1>
				<a href="createBoard.jsp"><button>글쓰기</button></a>
			</header>
			<hr />
	<% request.setCharacterEncoding("UTF-8"); %>		
<section id="container">
<form role="form" method="get">
<table class="table table-hover" style="border:solid">
<thead>
	<tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
</thead>
	<% for(int i = 0 ; i < list.size(); i++){ %>
		<tr><td><%=list.get(i).getBid()%></td><td><%=list.get(i).getTitle()%></td>
		<td><%=list.get(i).getUser()%></td><td><%=list.get(i).getDatetime()%></td></tr>
<%} %>
</table>
</form>
</section>
		</div>
	</body>
</html>