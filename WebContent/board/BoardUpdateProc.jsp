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
			alert("패스워드가 일치 하지 않습니다. 다시 확인후 수정해 주세요");
			history.go(-1);
		</script>
		<% 
	}
%>	

</body>
</html>