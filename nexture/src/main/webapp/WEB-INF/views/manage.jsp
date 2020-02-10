<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/tab.css">
<meta charset="UTF-8">
<title>社員管理プログラム</title>
</head>
<body>
	${sessionScope.name}様
	<button value="logout" onclick="location.href='logout'">ログアウト</button>
	<hr size="2px">
	<div class="container">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">社員管理</li>
			<li class="tab-link" data-tab="tab-2">勤務表管理</li>
			<li class="tab-link" data-tab="tab-3">費用請求書管理</li>
		</ul>
		<div id="tab-1" class="tab-content current">
			<table style="width: 100%">
				<tr>
					<th>名前</th>
					<th>社員番号</th>
					<th>職責</th>
				</tr>
				<c:forEach var="list" items="${employee }">
					<tr class="hover"
						onclick="location.href='details?EM_number=${list.EM_number}'"
						style="text-align: center;">
						<td>${list.name}</td>
						<td>${list.EM_number }</td>
						<td>${list.hire_position}</td>
					</tr>
				</c:forEach>
			</table>
			<button type="button" onclick="location.href='signup'">社員登録</button>
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
			
			$(".hover").hover(function() {
				$(this).css("background-color", "#849AB3");
			}, function() {
				$(this).css("background-color", "#ededed");
			});

		})
	</script>
</body>
</html>