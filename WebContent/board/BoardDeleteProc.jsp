<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
	String pass = request.getParameter("password");
	int num = Integer.parseInt(request.getParameter("num"));
	
	BoardDAO bdao = new BoardDAO();
	String password = bdao.getPass(num);
	
	if(pass.equals(password)){
		
		bdao.deleteBoard(num);
		 
		response.sendRedirect("BoardList.jsp");
	}else{
		%>
		<script>
			alert("�н����尡 Ʋ���� ���� �� �� �����ϴ�. �н����带 Ȯ�����ּ���");
			history.go(-1);
		</script>
		<% 
	}
%>
</body>
</html>