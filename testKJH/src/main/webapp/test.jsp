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
<%@ page import="java.util.ArrayList" %>

<%
BoardDAO test = new BoardDAO();
ArrayList<BoardDTO> arrayData = test.getBoard();
%>
<%@ include file="navbar.jsp" %>
<ul>
<% for(int i = 0 ; i < arrayData.size(); i++){ %>

<li>	<%=arrayData.get(i).getTitle()%></li>
<%} %>

</ul>
<%-- JSP 페이지에서 출력합니다. --%>
<c:forEach var="arrayData" items="${arrayData}">
    <p><c:out value="${arrayData.getTitle()}" /></p>
</c:forEach>



</body>
</html>