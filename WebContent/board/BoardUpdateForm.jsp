<%@page import="board.BoardBean"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>

<center>
<h2> �Խñ� ����</h2>
<%  
	int num = Integer.parseInt(request.getParameter("num").trim());

	BoardDAO bdao = new BoardDAO();
	BoardBean bean = bdao.getOneUpdateBoard(num);
%>
<form action="BoardUpdateProc.jsp" method="post">
<table width="600" border="1" bgcolor="skyblue">
	<tr height="40">	
		<td width="120" align="center">�ۼ���</td>
		<td width="180" align="center"><%=bean.getWriter() %></td>
		<td width="120" align="center">�ۼ���</td>
		<td width="120" align="center"><%=bean.getReg_date() %></td>
		</tr>
		<tr height="40">
		<td width="150" align="center">����</td>
		<td width="480" colspan="3"> &nbsp; <input type="text" name="subject" value="<%=bean.getSubject() %>" size="60"></td>
		</tr>
		<tr height="40">	
		<td width="120" align="center">�н�����</td>
		<td width="480" colspan="3"> &nbsp; <input type="password" name="password" size="60"></td>
		</tr>
		<tr height="40">	
		<td width="120" align="center">�۳���</td>
		<td width="480" colspan="3"> <textarea rows="10" cols="60" name="content" align="left"><%=bean.getContent() %> </textarea></td>
		</tr>
		<tr height="40">
		<td colspan="4" align="center">
		<input type="hidden" name="num" value="<%=bean.getNum() %>">
		<input type="submit" value="�ۼ���"> &nbsp;&nbsp;
		<input type="button" onclick="location.href='BoardList.jsp'" value="��ü�ۺ���"></td>
		</tr>
</table>
</form>
</center>

</body>
</html>