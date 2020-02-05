<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>社員管理プログラム</title>
</head>
<body>
	<form action="signup" method="POST">
		<table style="border: 2px">
			<tr>
				<th colspan="3">
					<h2>新規登録</h2>
				</th>
			</tr>
			<tr>
				<th>名前</th>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<th>生年月日</th>
				<td><input type="text" name="birth" size="7" maxlength="6">
					例:920406</td>
			</tr>
			<tr>
				<th>電話番号</th>
				<td><select name="phone" id="phone1">
						<option value="010" selected="selected">010</option>
						<option value="016">016</option>
						<option value="017">017</option>
				</select> - <input type="text" id="phone2" size="5" maxlength="4"> -
					<input type="text" id="phone3" size="5" maxlength="4"></td>
			</tr>
			<tr>
				<th>住所</th>
				<td><input type="text" name="address" id="address" size="30"></td>
			</tr>
			<tr>
				<th>本家の連絡先</th>
				<td><select name="phone2" id="phone2_1">
						<option value="02" selected="selected">02</option>
						<option value="010">010</option>
						<option value="031">031</option>
				</select> - 
				<input type="text" id="phone2_2" size="5"maxlength="4">
					 -
				<input type="text" id="phone2_3" size="5" maxlength="4"></td>
			</tr>
			<tr>
				<th>本家の住所</th>
				<td><input type="text" name="address2" id="address2" size="30"></td>
			</tr>
			<tr>
				<th>入社日</th>
				<td><input type="date" name="entryday" id="entryday"></td>
			</tr>
			<tr>
				<th>雇用形態</th>
				<td><select name="hire_type">
						<option value="短期雇用">短期雇用</option>
						<option value="長期雇用">長期雇用</option>
				</select></td>
			<tr>
				<th></th>
				<td></td>
			</tr>
		</table>
		<input type="submit" value="登録"></input> <input type="reset"
			value="リセット"></input> <input type="button" value="戻る"
			onclick="location.href='/ojt'" />
	</form>
</body>



</html>