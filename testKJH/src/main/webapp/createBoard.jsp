
<%@ include file="navbar.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<a href="./boardView.jsp"><button type="button" class="btn btn-blue float-end" style="background : #00F5FF">목록</button></a>
			 	
				<button type="submit" class="btn btn-dark float-end">Save</button>
				
			</form>
			<div >
			</div>
		</div>
	</article>
</body>
</html>