<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<!-- 导航栏 -->
		<%@ include file="top.jsp"%>

		
			
				<div class="card-header">报名活动记录</div>
				<table class="table">
					<thead class="thead-light">
						<tr>
							<th scope="col">序号</th>
							<th scope="col">活动名</th>
							<th scope="col">报名用户名</th>
							<th scope="col">报名时间</th>
							
						</tr>
					</thead>
					<tbody>
				
					<c:forEach items="${applylist}" var="user" varStatus="i">
					
						<tr>
							<th scope="row">${i.count}</th>
							<td>${user.activityname}</td>
							<td>${user.username}</td>
						
							<td>${user.regtime}</td>
						</tr>
						</c:forEach>
						
						 
						
					</tbody>
				</table>

				

			</div>
</body>
</html>