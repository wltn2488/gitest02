<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품화면</title>
	   <style>
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
            height: 800px;
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

<input type="button" value="의류" >
<input type="button" value="가구" >
<input type="button" value="취미 컬렉션" >
<input type="button" value="뷰티/미용" >
<input type="button" value="도서" >
<input type="button" value="스포츠/레저" >
<input type="button" value="유아용품/출산" >
<input type="button" value="디지털/가전" >
<br><br>
	<b><font size="6" color="gray">상품목록</font></b>
	        <br><br><br>
	        
<table border="1" >
        <tr>
           
            <th>상품이미지</th>
            <th>상품명</th>
            <th>가격</th>
        </tr>
       
        <tr>
            <td> <img src="img/pants.png" width="120px" height="110px"> </td>
            
            <td>   바지	</td>
            
            <td>10,000원 </td>
            
        </tr>
        
       <tr>
            <td> <img src="img/shirt.png" width="150px" height="110px"> </td>
            
            <td>   셔츠 </td>
            
            <td>10,000원 </td>
            
        </tr>
        
         <tr>
            <td> <img src="img/shoes.png" width="100px" height="110px"> </td>
            
            <td>   신발</td>
            
            <td>10,000원 </td>
            
        </tr>
        


    </table>
    
    
</body>
</html>