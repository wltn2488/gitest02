<%@page import="board.BoardBean"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num").trim());

	BoardDAO bdao = new BoardDAO();
	
	BoardBean bean = bdao.getOneBoard(num);
%>
<center>
<h2> �Խñ� ���� </h2>
<table width="600" border="1" bgcolor="skyblue"> 
	<tr height="40">
		<td align="center" width="120">�۹�ȣ </td>
		<td align="center" width="180"> <%=bean.getNum() %>
		<td align="center" width="120">��ȸ�� </td>
		<td align="center" width="180"> <%=bean.getReadcount() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">�ۼ��� </td>
		<td align="center" width="180"> <%=bean.getWriter() %>
		<td align="center" width="120">�ۼ��� </td>
		<td align="center" width="180"> <%=bean.getReg_date() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">�̸��� </td>
		<td align="center" colspan="3"> <%=bean.getEmail() %>
	</tr>
	<tr height="40">
		<td align="center" width="120">���� </td>
		<td align="center" colspan="3"> <%=bean.getSubject() %>
	</tr>
	<tr height="80">
		<td align="center" width="120">�� ���� </td>
		<td align="center" colspan="3"> <%=bean.getContent() %>
	</tr>
	<tr height="40">
		<td align="center" colspan="4">
		<input type="button" value="��۾���" onclick="location.href='BoardReWriteForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level<%=bean.getRe_level()%>'">
		<input type="button" value="�����ϱ�" onclick="location.href='BoardUpdateForm.jsp?num<%=bean.getNum() %>'">
		<input type="button" value="�����ϱ�" onclick="location.href='BoardDeleteForm.jsp?num<%=bean.getNum() %>'">
		<input type="button" value="��Ϻ���" onclick="location.href='BoardList.jsp'">
</table>

</center>

</body>
</html>