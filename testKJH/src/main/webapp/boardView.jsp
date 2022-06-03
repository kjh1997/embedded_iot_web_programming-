<%@ include file="navbar.jsp"  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDTO" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.util.ArrayList" %>
<style>
	tr:nth-child(even){
		background-color: #CFF;
	}
</style>
<%
BoardDAO dao = new BoardDAO();
ArrayList<BoardDTO> list = dao.getBoard();
request.setCharacterEncoding("UTF-8");
%>
<meta charset="UTF-8">
<div class="container">
			<header>
				<h1> 게시판</h1>
				
				<a href="createBoard.jsp"><button>글쓰기</button></a>
				<div class="row">
        <div class="col-md-4 col-md-offset-3">
            <form method="GET">
    <div class="mx-auto mt-5 search-bar input-group mb-3">
      <input name="q" type="text" class="form-control rounded-pill" placeholder="검색" aria-label="Recipient's username" aria-describedby="button-addon2">
      <div class="input-group-append">
      </div>
    </div>
  </form>
        </div>
    </div>
				
			</header>
			
			<hr />
	<% request.setCharacterEncoding("UTF-8"); %>		
<section id="container">
<form role="form" method="get">
<table class="table table-hover" style="border:solid">
<thead>
	<tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th><th>유형</th></tr>
</thead>
	<% for(int i = 0 ; i < list.size(); i++){ %>
		<tr>
		<td><a style="text-decoration: none"href="./boardEntity.jsp?bno=<%=list.get(i).getBid()%>"><%=list.get(i).getBid()%></a></td>
		<td><%=list.get(i).getTitle()%></td>
		<td><%=list.get(i).getUser()%></td>
		<td><%=list.get(i).getDatetime()%></td>
		<td><%=list.get(i).getType()%></td>
		</tr>
	<%} %>
</table>
</form>
<ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <% for(int i = 0 ; i < (list.size()+10)/10; i++){ %>
    <li class="page-item"><a class="page-link" href="#"><%=i+1%></a></li>
    <%} %>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</section>
		</div>
	</body>
</html>