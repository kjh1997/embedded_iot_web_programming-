<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="user.UserDTO" scope="page"/>
<jsp:setProperty name="user" property="*"/>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

<%
	request.setCharacterEncoding("UTF-8");
	Boolean result;
	if ((user.getUserID()== null) || (user.getUserPW()==null)){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("<script>");
		script.close();
		return;
	}
	UserDAO dao = new UserDAO();
	System.out.println(user.getUserPN());
	result = dao.login(user.getUserID(), user.getUserPW());

	if (result == true){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		session.setAttribute("login",1);		
		script.println("alert('로그인 성공!')");
		session.setAttribute("id",user.getUserID());
		System.out.println(user.getUserPN());
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		script.close();
		return;
	} else if(result != true){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('일치하는 정보가 없습니다.')");
		script.println("history.back()");
		script.println("</script>");
		script.close();
		return;
	}
%>
