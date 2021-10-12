<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册账号</title>
<link href="CSS/register.css" type="text/css" rel="stylesheet" />
</head>
<body background="images/Ocean.jpg" >
		<div class=info >
		<form action="User.do" method="post">
		<input type="hidden" name="method" value="regist">
			<table>
				<tr>
					<td ><p class="bian">用户名：</p></td>
					<td><input type="text"  name="username" placeholder="请输入用户名" class="bian"/></td>
				</tr>
				
				<tr>
					<td><p class="bian">密码：</p></td>
					<td><input type="password"  name="password1" placeholder="请输入密码" class="bian"/></td>
				</tr>
				
				<tr>
					<td><p class="bian">确认密码：</p></td>
					<td><input type="password"  name="password2" placeholder="请再次输入密码" class="bian"/></td>
				</tr>
				
				<tr>
					<td><p class="bian">性别：</p></td>
					<td>
						<input type="radio" name="gender" checked="checked" value="男" class="bian"/>男
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="gender" value="女" class="bian"/>女
					</td>
				</tr>
				
				<tr>
					<td><p class="bian">出生年月：</p></td>
					<td><input type="text"  name="age"  placeholder="请输入年龄" class="bian"/></td>
				</tr>
				
				<tr>
					<td><p class="bian">电话号码：</p></td>
					<td><input type="text"  name="telephone" placeholder="请输入电话" class="bian"/></td>
				</tr>
				
				<tr>
					<td><p class="bian">当前职业：</p></td>
					<td>
						<select name="vocation" class="bian"> 
							<option>学生</option>
							<option>教师</option>
							<option>记者</option>
							<option>自媒体</option>
							<option>程序员</option>
							<option>工程师</option>
							<option>自由职业者</option>
						</select>
					</td>
				</tr>
			</table>
			
			<div class="handin">
				<input type="submit" name="hand" value="提交" class="bt">
				<input type="reset" value="重置" class="bt">
			</div>
			</form>	
		</div>
</body>
</html>