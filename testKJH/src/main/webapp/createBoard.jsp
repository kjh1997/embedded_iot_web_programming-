<%@ include file="navbar.jsp" %>
	<article>
		<div class="container" role="main">
			<h2>글 작성</h2>
			<form name="form" id="form" role="form" method="post" action="./boardCreateAction.jsp">
				<div class="mb-3">
					<label for="title">Title</label>
					<input type="text" class="form-control" name="title" placeholder="Input title">
				</div>
				<div class="mb-3">
					<label for="content">Content</label>
					<textarea class="form-control" rows="5" name="contents" placeholder="Input Content" ></textarea>
				</div>
				<button type="submit" class="btn btn-dark float-end">Save</button>
				<select name="Class" >
				    <option value="none">=== 선택 ===</option>
				    <option value="data">데이터 엔지니어</option>
				    <option value="android">안드로이드</option>
				    <option value="bankend">백엔드 개발자</option>
				    <option value="frontend">프론트 개발자</option>
				    <option value="ios">IOS 개발자</option>
			  </select>
			</form>
			<div >
				<button type="button" class="btn btn-sm btn-primary" id="btnList">List</button>
			</div>
		</div>
	</article>
</body>
</html>