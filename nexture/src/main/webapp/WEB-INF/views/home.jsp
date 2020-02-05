<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社員管理プログラム</title>
</head>
<body>
	${sessionScope.name}様
	<button value="logout" onclick="location.href='logout'">ログアウト</button>
	<table>
		<c:if test="${sessionScope.authority > 0}">
			<tr>
				<th>名前</th>
				<th>社員番号</th>
				<th>職責</th>
			</tr>
			<c:forEach var="list" items="${employee }">
				<tr onclick="location.href='details?${list.EM_number}'">
					<td>${list.name}</td>
					<td>${list.EM_number }</td>
					<td>${list.hire_position}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<c:if test="${sessionScope.authority < 1}">
				詳細情報
			</c:if>
</body>
</html>