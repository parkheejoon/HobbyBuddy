<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<style>
   table, th, td{
      border: 1px solid black;
      border-collapse: collapse;
      padding: 5px 10px;
   }
   button {
      margin: 5px;
   }
   table{
      width: 500px;
   }
</style>
</head>
<body>
	<jsp:include page="gnb.jsp"/>
	<h3>아이디 찾기</h3>
	<form action="idFind.do" method="get">	   
	   <table>
	      <tr>
	         <th>이메일</th>
	         <td><input type="text" name="email"></td>
	      </tr>
	      <tr>
	         <th>전화번호</th>
	         <td><input type="text" name="phone"></td>
	      </tr>
	      <tr>
	         <th>아이디 찾기 결과 :</th>
	         <td>${findId}</td>
	      </tr>
	      <tr>
	         <th colspan="2">
	            <button>아이디 찾기</button>
	         </th>         
	      </tr>
	   </table>
   </form>
</body>
<script>

</script>
</html>