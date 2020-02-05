<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<html>
<head>
<title>社員管理プログラム</title>
</head>
<body>
	<form action="login" method="POST">
		<table>
			<tr>
				<th>社員番号</th>
				<td><input type="text" placeholder="社員番号" name="EM_number"
					id="EM_number"></td>
			</tr>
			<tr>
				<th>パスワード</th>
				<td><input type="password" placeholder="パスワード" name="password"
					id="password"></td>
			</tr>
		</table>
		<input type="submit" value="ログイン"> <input type="button"
			value="新規登録" onclick="location.href='signup'">
	</form>
</body>
</html>
