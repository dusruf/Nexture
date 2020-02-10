<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>パスワード変更</title>
</head>
<body>

<div class="box" style="text-align: center;">
	<form action="pw_change" method="post">
		<table>
			<tr>
				<th>パスワード</th>
				<td><input type="password" name="password" id="pw1" onkeyup="pw_checking2()"></td>
			</tr>
			<tr>
				<th>パスワード再入力</th>
				<td><input type="password" id="pw2" onkeyup="pw_checking()"></td>
			</tr>
			<tr>
			<td id="result"></td>
			</tr>
		</table>
		<input type="button" value="変更" onclick="pw_change()" size="100px;">
	</form>
	
	</div>
<script src="resources/jquery-3.4.1.js"></script>
	
<script type="text/javascript">
window.onkeyup = "pw_checking()"

function pw_checking(){
	var getpw1 = document.getElementById("pw1").value;
	var getpw2 = document.getElementById("pw2").value;
	
	if(getpw1!=getpw2){
		document.getElementById("result").innerHTML = "<font color='#FF4848'>パスワードが一致していません</font>"
		return false;
	}else{
		document.getElementById("result").innerHTML = "<font color='#368AFF'>パスワードが一致しました</font>"
		return true;
	}
	if(getpw1==""||getpw2==""){
		document.getElementById("result").innerHTML = "";
		return false;
	}
}
function pw_checking2(){
	var getpw1 = document.getElementById("pw1").value;
	if(getpw1.length<8||getpw1.length>16){
		document.getElementById("result").innerHTML = "<font color='#FF4848'>パスワードは8字から16字まで設定してください</font>"
		return false;
	}else{
		document.getElementById("result").innerHTML = ""
		return true;
	}
}
function pw_change(){
	
	if(pw_checking2()==true){
		if(pw_checking()==true){
			$.ajax({
			       type: "POST",
			       url: "pw_change.do",
			       data: {"password":$('#pw1').val()},
			         success: function (abc) {
			            window.close();
			            alert("変更されました")
			        }, error: function (jqXHR, textStatus, errorThrown) {
			          alert(jqXHR + ' ' + textStatus.msg);
			       }
			}); 
		}
	}
	
	
	
	
}


</script>

</body>
</html>