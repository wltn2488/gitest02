<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <% request.setCharacterEncoding("utf-8"); %>
<%
    String contentPage=request.getParameter("contentPage");
    if(contentPage==null)
        contentPage="firstView.jsp";
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>메인 화면</title>
	
	   <style>
        /* 
        레이아웃 전체 가운데 정렬 태그  
        - margin:0 auto 0 auto;(시계방향으로 위, 오른쪽, 아래, 왼쪽)
        왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬이 된다. 
        
        전체를 감싸주는 태그 #wrap 
        */
        #wrap {
            width: 800px;
            margin: 0 auto 0 auto;
        }
        
        #header {
            text-align: center;
            width: 800px;
            height: 100px;
            background-color: #F6F6F6;
            padding: 60px 0px;
        }
        
        #main {
            float: left;
            width: 800px;
            height: 500px;
            background-color: #D1B2FF;
            text-align:center;
            vertical-align: middle;
        }
        #footer {
            clear: left;
            width: 800px;
            height: 50px;
            background-color: #CEFBC9;
        }
    </style>
</head>
<body>
 
    <div id="wrap">
        <div id="header">
            <jsp:include page="header.jsp" />
        </div>
        <div id="main">
            <jsp:include page="<%=contentPage%>" />
        </div>
        <div id="footer"> 4조 이지수,이경민,진민수 </div>
    </div>
  
</body>
</html>
