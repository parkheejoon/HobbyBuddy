<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<link rel="stylesheet" href="resources/css/css.css">
<style>
	table, th, td{
		border : 1px solid black;
		border-collapse: collapse;
		padding : 5px 10px;
	}
	
	td[class="msearch"]{
      margin-top: 5px;
 	  }
</style>

</head>
<body>
	<div class="memberList">
		<form action="memberList.do" method="get">
			<table>
				
				<tr>
					<th>구분</th>
					<td>
						<input type="checkbox" name="admin" value="true"/>     관리자
						<input type="checkbox" name="member" value="false"/>     회원
					</td>
				</tr>
<!--  				<tr>
					<th>경고횟수</th>
					<td>
						<input type="checkbox" name="warning" value="0"/>     0 회
						<input type="checkbox" name="warning" value="1"/>     1 회
						<input type="checkbox" name="warning" value="2"/>     2 회
						<input type="checkbox" name="warning" value="3"/>     3 회
					</td>
				</tr>  -->
<!--  				<tr>
					<th>정지여부</th>
					<td>
						<input type="checkbox" name="ban" value="false"/>     정상 회원
						<input type="checkbox" name="ban" value="true"/>     정지 회원
					</td>
				</tr> -->
				<tr>
					<th colspan="2">
						<input type="submit" value="검색"/>
					</th>
				</tr>
			</table>
		</form>
	</div>
		<table>
			<thead>
					<tr>
						<th>구분</th>
						<th>아이디</th>
						<th>이름</th>
						<th>경고횟수</th>
						<th>정지여부</th>	
					</tr>
               </thead>
               
         	<tbody>
				<c:forEach items="${list}" var="member">
					<tr>
						<td>${member.admin}</td>
						<td>
							<a href="javascript:void(0);" onclick="openPopup('${member.id}');">${member.id}</a>
						</td>
						<td>${member.name}</td>
						<td>경고횟수 자리</td>
						<td>${member.ban}</td>
					</tr>			
				</c:forEach>
				
					<tr>
	                  <td class="msearch" colspan="8">      
	                     <form action="msearch.do">
	                        <input type="text" name="search" value=""/>
	                        <select name="ssorting">
	                           <option value="id">아이디</option>
	                           <option value="name">이름</option>
	                        </select>
	                        <input type="submit" value="검색"/>
	                     </form>
	                  </td>
	               </tr>
			</tbody>
	</table>
</body>
<script>
	
	function openPopup(memberId) {
	    var url = 'mdetail.do?id=' + memberId;
	    window.open(url, '_blank', 'width=`1000,height=700');
	  }
</script>
</html>