<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<script src="./js/jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script src="popper.js"></script>

<meta charset="EUC-KR">
<title>base</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">과제 연습</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active">Disabled</a>
        </li>
      </ul>
      <div style="float: right">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
      <a class="nav-link active" aria-current="page" href="./login.jsp">로그인</a>
      </li>
      <li class="nav-item">
      <a class="nav-link active" aria-current="page" href="./joinform.jsp">회원 가입</a>
      </li>
      </ul>
      </div>
    </div>
  </div>
</nav>
<form action="./userJoinAction.jsp">
<input type="text" name="userID">
<input type="password" name="userPW">
<button type="submit">입력 전송</button>
</form>

</body>
</html>