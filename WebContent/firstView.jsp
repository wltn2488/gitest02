<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>첫화면</title>
<meta charset="UTF-8">
</head>
<body>
<%
        if(session.getAttribute("sessionID") == null) // 로그인이 안되었을 때
        { 
    %>
            <br><br><br>
            <b><font size="6" color="gray">중고거래 사이트</font></b>
            <br><br><br>
            <img src="img/welcome.jpg" width="300" height="200" border="0">
            <br><br>    
    <%
        }
        else // 로그인 했을 경우
        {
    %>
            <br><br><br>
            <font size=6 color="black"><%=session.getAttribute("sessionID") %></font>
            <font size=6>님 환영합니다.</font>
    <%    } %>
    </body>
</html>
