<%@page import="board.BoardBean"%>
<%@page import="java.util.Vector"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript">
    

		// �۾��� ��ư Ŭ����  �̵�
		function goBoardWrite() {
			location.href="BoardWriteForm.jsp";
		}
		// Ȩ ��ư Ŭ����  �̵�
		function gomain() {
			location.href="../mainForm.jsp";
		}
	</script>
</head>
<body>

	<center>
		<h2>��ü �Խñ� ����</h2>
		<%
			int pageSize = 10;

			String pageNum = request.getParameter("pageNum");

			if (pageNum == null) {
				pageNum = "1";
			}
			int count = 0;
			int number = 0;

			int currentPage = Integer.parseInt(pageNum);

			BoardDAO bdao = new BoardDAO();

			count = bdao.getAllCount();
			int startRow = (currentPage - 1) * pageSize + 1;
			int endRow = currentPage * pageSize;

			Vector<BoardBean> vec = bdao.getAllBoard(startRow , endRow); 
			
			number = count - (currentPage -1) * pageSize;
			
		%>



		<table width="700" border="1" bgcolor="skyblue">
			<tr height="40">
				<td align="right" colspan="5">
				<input type="button" value="�۾���" onclick="goBoardWrite()">
				<input type="button" value="Ȩ" onclick="gomain()">
				</td>
			</tr>
			<tr height="40">
				<td width="50" align="center">��ȣ</td>
				<td width="320" align="center">����</td>
				<td width="100" align="center">�ۼ���</td>
				<td width="150" align="center">�ۼ���</td>
				<td width="80" align="center">��ȸ��</td>
			</tr>
			<%
				for (int i = 0; i < vec.size(); i++) {
					BoardBean bean = vec.get(i);
			%>
			<tr height="40">
				<td width="50" align="center"><%=number-- %></td>
				<td width="320" align="left"><a
					href="BoardInfo.jsp?num=<%=bean.getNum()%>"
					style="text-decoration: none"> <%
 	if (bean.getRe_step() > 1) {
 			for (int j = 0; j < (bean.getRe_step() - 1) * 5; j++) {
 %>&nbsp; <%
 	}
 		}
 %> <%=bean.getSubject()%>
				</a></td>
				<td width="100" align="center"><%=bean.getWriter()%></td>
				<td width="150" align="center"><%=bean.getReg_date()%></td>
				<td width="80" align="center"><%=bean.getReadcount()%></td>
			</tr>
			<%
				}
			%>

		</table>
	<p>
	
	<%
	if(count > 0) {
		int pageCount = count / pageSize + (count%pageSize == 0 ? 0 : 1);
		
		int startPage = 1;
		
		if(currentPage %10 != 0){
			startPage=(int)(currentPage/10)*10+1;
		}else{
			startPage=((int)(currentPage/10)-1)*10+1;
		}
		int pageBlock=10;
		int endPage = startPage+pageBlock-1;
		
		if(endPage > pageCount) endPage = pageCount;
		
		if(startPage > 10){
			%>
			<a href="BoardList.jsp?pageNum=<%=startPage-10 %>"> [����] </a>
			<% 
		}
		for(int i = startPage; i<= endPage ; i++){
			%>
			<a href="BoardList.jsp?pageNum=<%=i %>"> [<%=i %>] </a>
			<% 	
		}
		
		if(endPage <pageCount) {
			%>
			<a href="BoardList.jsp?pageNum=<%=startPage+10 %>"> [����] </a>
			<% 	
		}
	}
	%>	
		
		
		
	</center>

</body>
</html>