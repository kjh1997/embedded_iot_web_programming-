
<%@ include file="navbar.jsp" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.BoardDTO" %>
<%

BoardDAO dao = new BoardDAO();
String bid = request.getParameter("bno");
BoardDTO dto = dao.getBoardOne(bid);
%>
    <style>
    .check{
    display: inline;
    border: 1px solid black
    }
    .checkbox{
    margin-left: 10px;
    }
    </style>
	<article>
		<div class="container" role="main">
			<h2>글 작성</h2>
			<form accept-charset="UTF-8" action="./boardModifyAction.jsp">
				<div class="mb-3">
					<label for="title">Title</label>
					<input type="text" class="form-control" name="title" placeholder="Input title" value="<%=dto.getTitle() %>">
				</div>
				<div class="mb-3">
					<label for="content">Content</label>
					<textarea class="form-control" rows="5" name="contents" placeholder="Input Content" ><%= dto.getContents()%></textarea>
				</div>
				<div class="mb-3">
					<label for="content">연락처</label>
					<input type="text" class="form-control" name="pn" placeholder="Input phone number" value="<%=dto.getPn() %>">
				</div>
				<label>직업 분류 선택</label>
				<select name="type" >
				    <option value="none">=== 선택 ===</option>
				    <option value="Data engineer">Data engineer</option>
				    <option value="Android">Android</option>
				    <option value="Backend">Back-end</option>
				    <option value="Frontend">Front-end</option>
				    <option value="Ios">IOS</option>
				    <option value="ML-OPS">ML-OPS</option>
			 	</select>
			 	<label class="checkbox">분류 선택</label>
			 	<div class="check">
			 	<label><input type="radio" name="contentType" value="peo" checked> 구인</label>
                <label><input type="radio" name="contentType" value="job"> 구직</label>
			 	</div>
				<a href="javascript:history.back();"><button type="button" class="btn btn-blue float-end" style="background : #00F5FF">목록</button></a>
			 	
				<button type="submit" class="btn btn-dark float-end">Save</button>
				<div>
					<input name="bid" value="<%=bid%>">
				</div>
			</form>
			<div >
			</div>
		</div>
	</article>
</body>
</html>