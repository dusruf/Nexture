<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet" href="resources/tab.css">
<meta charset="UTF-8">
<title>社員管理プログラム</title>
<style type="text/css">
.bg {
	color: gray;
}
</style>
</head>
<body>
	${sessionScope.name}
	<font style="font-weight: 50px;">様</font>
	<button value="logout" onclick="location.href='logout'">ログアウト</button>
	<hr size="2px">
	<div class="container">

		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">情報管理</li>
			<li class="tab-link" data-tab="tab-2">勤務表管理</li>
			<li class="tab-link" data-tab="tab-3">費用請求書管理</li>
		</ul>
		<div id="tab-1" class="tab-content current">
			<form action="info_change" method="POST">
				<table style="border: 2px;">
					<tr>
						<th>名前</th>
						<td><input type="text" name="name" id="name"
							value="${employee.name}" size="12"></td>
						<th>社員番号</th>
						<td><input class="bg" name="EM_number" type="text"
							value="${employee.EM_number }" readonly="readonly" size="7"></td>
					</tr>
					<tr>
						<th>生年月日</th>
						<td><input class="bg" type="text" name="birth" size="7"
							maxlength="6" value="${employee.birth}" readonly="readonly"></td>
					</tr>
					<tr>
						<th>電話番号</th>
						<td><input type="text" name="phone" id="phone"
							value="${employee.phone}"></td>
					</tr>
					<tr>
						<th>住所</th>
						<td><input type="text" name="address" id="address" size="30"
							value="${employee.address}"></td>
					</tr>
					<tr>
						<th>本家の連絡先</th>
						<td><input type="text" name="phone2" id="phone2"
							value="${employee.phone2 }"></td>
					</tr>
					<tr>
						<th>本家の住所</th>
						<td><input type="text" name="address2" id="address2"
							size="30" value="${employee.address2}"></td>
					</tr>
					<tr>
						<th>入社日</th>
						<td><input class="bg" type="text" name="entryday"
							id="entryday" value="${employee.entryday}" readonly="readonly"
							size="12"></td>
					</tr>
					<tr>
						<th>職責</th>
						<td><select name="hire_position">
								<option value="社員"
									<c:if test="${employee.hire_position == 社員}"></c:if>>社員</option>
								<option value="主任"
								<c:if test="${employee.hire_position == 主任}">
								selected="selected"</c:if>>主任</option>
								<option value="課長"
									<c:if test="${employee.hire_position == 課長}">selected="selected"</c:if>>課長</option>
								<option value="部長"
									<c:if test="${employee.hire_position == 部長}">selected="selected"</c:if>>部長</option>
								<option value="社長"
									<c:if test="${employee.hire_position == 社長}">selected="selected"</c:if>>社長</option>
						</select></td>
					</tr>
					<tr>
						<th>雇用形態</th>
						<td><select name="hire_type" id="hire_type">
								<option value="短期雇用"
									<c:if test="${employee.hire_type == 短期雇用 }">selected="selected"</c:if>>短期雇用</option>
								<option value="長期雇用"
									<c:if test="${employee.hire_type == 長期雇用 }">selected="selected"</c:if>>長期雇用</option>
						</select></td>
					</tr>

				</table>
				<input type="submit" value="修正">
			</form>
		</div>
		<div id="tab-2" class="tab-content">勤務表管理の内容</div>
		<div id="tab-3" class="tab-content">費用請求書管理の内容</div>
	</div>
	<script src="resources/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('ul.tabs li').click(function() {
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#" + tab_id).addClass('current');
			})

		})
	</script>
</body>
</html>