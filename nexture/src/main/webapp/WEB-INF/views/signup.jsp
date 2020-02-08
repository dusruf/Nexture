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
				<td><input type="text" name="phone" id="phone"placeholder="00*-000*-0000" maxlength="13"></td>
			</tr>
			<tr>
				<th>住所</th>
				<td><input type="text" name="address" id="address" size="30"></td>
			</tr>
			<tr>
				<th>本家の連絡先</th>
<td>		<input type="text" name="phone2" id="phone2"placeholder="00*-000*-0000" maxlength="13"></td>
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
<script type="text/javascript">
var autoHypenPhone = function(str){
    str = str.replace(/[^0-9]/g, '');
    var tmp = '';
    if( str.length < 4){
        return str;
    }else if(str.length < 7){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3);
        return tmp;
    }else if(str.length < 11){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 3);
        tmp += '-';
        tmp += str.substr(6);
        return tmp;
    }else{              
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 4);
        tmp += '-';
        tmp += str.substr(7);
        return tmp;
    }

    return str;
}


var phone = document.getElementById('phone');
var phone2 = document.getElementById('phone2');

phone2.onkeyup = function(){
	console.log(this.value);
	this.value = autoHypenPhone( this.value ) ; 
}


phone.onkeyup = function(){
console.log(this.value);
this.value = autoHypenPhone( this.value ) ;  
}

</script>
	
</body>



</html>