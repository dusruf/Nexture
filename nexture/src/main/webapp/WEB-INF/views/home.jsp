<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="resources/tab.css">
<meta charset="UTF-8">
<title>社員管理プログラム</title>
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
			<table style="border: 2px;">
				<tr>
					<th>名前</th>
					<td width="40px"><input type="text" name="name" id="name"
						value="${employee.name}" readonly="readonly" size="12" ></td>
					<th>社員番号</th>
						<td><input name="EM_number"type="text" value="${employee.EM_number }"
							readonly="readonly" size="7"></td>
				</tr>
				<tr>
					<th>生年月日</th>
					<td><input type="text" name="birth" size="7" maxlength="6"
						value="${employee.birth}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>電話番号</th>
					<td><input type="text" name="phone" id="phone"
						value="${employee.phone}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>住所</th>
					<td><input type="text" name="address" id="address" size="30"
						value="${employee.address}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>本家の連絡先</th>
					<td><input type="text" name="phone2" id="phone2"
						value="${employee.phone2 }" readonly="readonly"></td>
				</tr>
				<tr>
					<th>本家の住所</th>
					<td><input type="text" name="address2" id="address2" size="30"
						value="${employee.address2}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>入社日</th>
					<td><input type="text" name="entryday" id="entryday"
						value="${employee.entryday}" readonly="readonly" size="12"></td>
				</tr>
				<tr>
					<th>職責</th>
					<td><input type="text" name="hire_position"
						value="${employee.hire_position}" readonly="readonly" size="4"></td>
				<tr>
					<th>雇用形態</th>
					<td><input type="text" name="hire_type"
						value="${employee.hire_type}" readonly="readonly" size="7"></td>
				</tr>
			</table>
			<input type="button" value="パスワード変更" id="pw_ch" onclick="abc();">
			<input type="button" value="情報修正" id="info_ch" onclick="location.href='info_change?EM_number=${employee.EM_number}'">
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
		function abc() {
			window.open("pw_change", "", "width=460,height=200");
		}
	</script>
</body>
</html>