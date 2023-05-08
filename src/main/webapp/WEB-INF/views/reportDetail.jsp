<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style>
	table, th, td{
      border: 1px solid black;
      border-collapse: collapse;
      padding: 5px 10px;
   }
   button{
      margin: 5px;
   }
   table {
      width: 500px;
   }
   input[type="text"]{
      width: 40%;   
   }
   #search{
      display: inline-block;
   }
   colgroup {
      width: 30%;
   }
   #chkBtn{
   	 float: left;
   }
   #rightt{
   	float: right;
   }
   #listBack{
   	background: aqua;
   }
</style>
</head>
<body>
   <h3 align="center">신고 상세</h3>
   
      <table>
         
         <tr>
            <th>신고 번호</th>
            <td><a href="fBoardDetail.go?reptboard_num='+item.notice_idx+'"></a>${dto.rept_no}</td>
         </tr>
         <tr>
            <th>피신고자 아이디</th>
            <td>${dto.preporter}</td>
         </tr>
         <tr>
            <th>신고 게시판 종류</th>
            <td>${dto.reptboard_class}</td>
         </tr>
         <tr>
		  	<th>신고 제목</th>
		  	<td>${dto.rept_title}</td>  
		  </tr>
		 <tr>
            <th>신고 내용</th>
            <td >${dto.rept_content}</td>
         </tr>
         <tr>
            <th>신고 일시</th>
            <td><fmt:formatDate value="${dto.rept_date}" pattern="yyyy/MM/dd" /></td>
         </tr>
          
      </table> 
      <hr>	    
	  <jsp:include page="report_CommentBox.jsp"/>  
</body>
<script>

</script>
</html>