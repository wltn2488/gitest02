<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 처리</title>
</head>
<body>
	    <%
        session.invalidate(); // 모든세션정보 삭제
        response.sendRedirect("../../mainForm.jsp"); // 로그인 화면으로 다시 돌아간다.
 	   %>


</body>
</html>