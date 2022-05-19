<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String userID = null;
	String userPW = null;
	String userPW2 = null;
	String userPN = null;
	if (request.getParameter("userID")!= null){
		userID=(String) request.getParameter("userID");	
	}
	if (request.getParameter("userPW")!= null){
		userPW=(String) request.getParameter("userPW");
	}
	if (request.getParameter("userPW2")!= null){
		userPW2= (String) request.getParameter("userPW2");
	}
	if (request.getParameter("userPN")!= null){
		userPN= (String) request.getParameter("userPN");
	}
	System.out.println(userID+ "|"  +userPN+ "|" +userPW2+ "|" +userPW);
	if ((userID == null) || (userPW == null) || (userPN == null) || (userPW2 == null)){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
		script.close();
		return;
	}
	System.out.println(userID+ "||"  +userPN+ "||" +userPW2+ "||" +userPW);
	if ( userPW.equals(userPW2) != true){
		System.out.println(userPW);
		System.out.println(userPW2);

		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 다릅니다123.')");
		script.println("history.back()");
		script.println("</script>");
		script.close();
		return;
	}
	UserDAO dao = new UserDAO();
	int result = dao.join(userID, userPW, userPN);
	if (result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원 가입이 완료되었습니다.')");
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
%>