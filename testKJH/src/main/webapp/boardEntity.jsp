<%@ include file="navbar.jsp"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.BoardDTO" %>
<%
request.setCharacterEncoding("UTF-8");

BoardDAO dao = new BoardDAO();
BoardDTO dto = dao.getBoardOne(request.getParameter("bno"));
System.out.println("test"+dto.getType());
%>

	<article>
		<div class="container" role="main">
			<form accept-charset="UTF-8" action="./boardCreateAction.jsp">
				<div class="mb-3">
					<h3>자기 소개</h3>
					<label for="title" style="border: 1px solid #444444;"><%=dto.getContents()%></label>
				</div>
				<div class="mb-3">
					<h3>주요 경력</h3>
					<label for="title" style="border: 1px solid #444444;"><%=dto.getContents()%></label>
				</div>
				
				<table style="border: 1px solid #444444; width: 100%;">
				<thead>
					<td>성함</td><td>분야</td><td>작성일</td><td>전화번호</td>
				</thead>
				<tbody>
					<tr>
						<td><%=dto.getUser() %></td><td><%=dto.getType() %></td>
						<td><%=dto.getDatetime() %></td><td><%=dto.getPn()%></td>
					</tr>	
				</tbody>
				</table>
				<div style="display: inline-block; margin-top:10px">
				<a href="./boardView.jsp"><button type="button" class="btn btn-blue float-end" style="background : #00F5FF">목록</button></a>
			 	</div>
				
			</form>
			<div >
			</div>
		</div>
	</article>
	
	
	
</div>
</body>
</html>