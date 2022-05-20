<%@ include file="navbar.jsp" %>
	<article>
		<div class="container" role="main">
			<h2>board Form</h2>
			<form name="form" id="form" role="form" method="post" action="./boardCreateAction.jsp">
				<div class="mb-3">
					<label for="title">Title</label>
					<input type="text" class="form-control" name="title" id="title" placeholder="Input title">
				</div>
				<div class="mb-3">
					<label for="content">Content</label>
					<textarea class="form-control" rows="5" name="contents" id="content" placeholder="Input Content" ></textarea>
				</div>
			</form>
			<div >
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">Save</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">List</button>
			</div>
		</div>
	</article>
</body>
</html>