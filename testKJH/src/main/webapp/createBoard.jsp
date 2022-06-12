
<%@ include file="navbar.jsp" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if((String)session.getAttribute("id") == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요')");
		script.println("location.href = 'login.jsp';");
		script.println("</script>");
		
	}
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
			<form accept-charset="UTF-8" action="./boardCreateAction.jsp">
				<div class="mb-3">
					<label for="title">Title</label>
					<input type="text" class="form-control" name="title" placeholder="Input title">
				</div>
				<div class="mb-3">
					<label for="content">Content</label>
					<textarea class="form-control" rows="5" name="contents" placeholder="Input Content" ></textarea>
				</div>
				<div class="mb-3">
					<label for="content">연락처</label>
					<input type="text" class="form-control" name="pn" placeholder="Input phone number">
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
				<a a href="javascript:history.back();"><button type="button" class="btn btn-blue float-end" style="background : #00F5FF">목록</button></a>
			 	
				<button type="submit" class="btn btn-dark float-end">Save</button>
				
			</form>
			<div >
			</div>
		</div>
	</article>
</body>
</html>