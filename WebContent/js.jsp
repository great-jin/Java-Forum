<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.blog.domain.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	margin: 0 auto;
	text-align: center;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	font-weight: 600;
}

* {
	margin: 0 auto;
}

.head{
	width:980px;
	margin:0 auto;
	height:50px;
	padding-top:30px;
	}
.head .left{
	float:left;
	}
.head .right{
	float:right;
	}
input {
	margin: 8px;
}

textarea {
	margin: 0 auto;
}

.test1:empty::before {
	content: attr(placeholder); /*获取属性的值 attr（value）,可以获得属性值 */
	color: #999;
}

.utton {
	margin-top: 20px;
	width: 600px;
	height: 50px;
	font-weight: 600;
}

.footer{
	width:100%;
	height:60px;
	line-height:60px;
	text-align:center;
	background:#0373b9;
	color:#fff;
	}
</style>
<script>
	
</script>
<body>
	<div class="head">
		<div class="left">
			<img src="images/logo.jpg" />
		</div>
		<div class="right">
			<img src="images/phone.jpg" />
		</div>
	</div>

	<br />
	标题：
	<%
		if (request.getSession().getAttribute("user") != null) {
			User user = (User) request.getSession().getAttribute("user");
		}
	%>

	<form action="Article.do" method="post">
		<input type="hidden" name="method" value="save"> 
		<input type="text" size="50" maxlength="50" name="AHead" style="height: 30px;" />
		<br /> 
		<br />
		<input type="radio" value="1" name="aCategory" />CET-4 
		<input type="radio" value="2" name="aCategory" />CET-6 
		<input type="radio" value="3" name="aCategory" />广播 
		<input type="radio" value="4" name="aCategory" />趣闻
		<input type="radio" value="5" name="aCategory" />励志
		<input type="radio" value="6" name="aCategory" />雅思 
		<input type="radio" value="7" name="aCategory" />托福 
		<br />
		<br />
		<textarea name="aContent" cols="150" rows="50" align="center" placeholder="请输入内容..."></textarea>
		<br /> 
		
		<input type="submit" value="发布" name="submit" class="utton" />
	</form>
	
	<div class="footer">INVINCIBLE &nbsp;&nbsp;版权所有
		&nbsp;&nbsp;2000-2021 &nbsp;&nbsp;泉州信息工程学院 &nbsp;&nbsp;青春小队
	</div>
</body>
</html>
