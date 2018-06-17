<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.MemberDAO" %>    
<%@ page import="member.model.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제 처리</title>
</head>
<body>
<%
		String id= (String)session.getAttribute("sessionID"); 
		String pw = request.getParameter("password");
		
		// 세션에서 아이디를, DeleteForm.jsp에서 입력받은 비밀번호를 가져온다.
		// 가져온 결과를 가지고 회원정보를 삭제한다. - 삭제결과를 반환
		MemberDAO dao = MemberDAO.getInstance();
		int check = dao.deleteMember(id, pw);
		
		if(check == 1){
			session.invalidate(); // 삭제했다면 세션정보를 삭제한다.
	%>
		<br><br>
		<b><font size="4" color="gray">회원정보가 삭제되었습니다.</font></b>
		<br><br><br>
	
		<input type="button" value="확인" onclick="javascript:window.location='mainForm.jsp'">
	
	<%	
	 	// 비밀번호가 틀릴경우 - 삭제가 안되었을 경우
		}else{
	%>
		<script>
			alert("비밀번호가 맞지 않습니다.");
			history.go(-1);
		</script>
	<%
		} 
	%>
</body>
</html>