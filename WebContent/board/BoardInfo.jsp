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
<h2> 게시글 보기 </h2>
<table width="600" border="1" bgcolor="skyblue"> 
	<tr height="40">
		<td align="center" width="120">글번호 </td>
		<td align="center" width="180"> <%=bean.getNum() %>
		<td align="center" width="120">조회수 </td>
		<td align="center" width="180"> <%=bean.getReadcount() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">작성자 </td>
		<td align="center" width="180"> <%=bean.getWriter() %>
		<td align="center" width="120">작성일 </td>
		<td align="center" width="180"> <%=bean.getReg_date() %></td>
	</tr>
	<tr height="40">
		<td align="center" width="120">이메일 </td>
		<td align="center" colspan="3"> <%=bean.getEmail() %>
	</tr>
	<tr height="40">
		<td align="center" width="120">제목 </td>
		<td align="center" colspan="3"> <%=bean.getSubject() %>
	</tr>
	<tr height="80">
		<td align="center" width="120">글 내용 </td>
		<td align="center" colspan="3"> <%=bean.getContent() %>
	</tr>
	<tr height="40">
		<td align="center" colspan="4">
		<input type="button" value="답글쓰기" onclick="location.href='BoardReWriteForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level<%=bean.getRe_level()%>'">
		<input type="button" value="수정하기" onclick="location.href='BoardUpdateForm.jsp?num<%=bean.getNum() %>'">
		<input type="button" value="삭제하기" onclick="location.href='BoardDeleteForm.jsp?num<%=bean.getNum() %>'">
		<input type="button" value="목록보기" onclick="location.href='BoardList.jsp'">
</table>

</center>

</body>
</html>