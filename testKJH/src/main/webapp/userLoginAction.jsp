<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPW = null;
	if (request.getParameter("userID")){
		userID=(String) request.getParameter("userID");
	}
	if (request.getParameter("userPW")){
		userPW=(String) request.getParameter("userPW");
	}
	if ((userID== null) || (userPW==null)){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("<script>");
		script.close();
		return;
	}
	UserDAO dao = new UserDAO();
	int result = dao.login(userID, userPW);
	if (result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 성공!!')");
		session.setAttribute("login",1);
		session.setAttribute("id",userID);
		script.println("location.href = 'index.jsp");
		script.println("</script>");
		return;
	}
	
	
	
%>
