<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<%
	request.setCharacterEncoding("euc-kr");
%>

<jsp:useBean id="boardbean" class="board.BoardBean">
	<jsp:setProperty name="boardbean" property="*"/>
</jsp:useBean>
<%
	BoardDAO bdao= new BoardDAO();

	String pass = bdao.getPass(boardbean.getNum());
	
	if(pass.equals(boardbean.getPassword())){
		bdao.updateBoard(boardbean);
		  
		response.sendRedirect("BoardList.jsp");
	}else{
		%>
		<script type="text/javascript">
			alert("�н����尡 ��ġ ���� �ʽ��ϴ�. �ٽ� Ȯ���� ������ �ּ���");
			history.go(-1);
		</script>
		<% 
	}
%>	

</body>
</html>