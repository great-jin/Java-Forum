<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.blog.domain.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/English.css" type="text/css" rel="stylesheet" />
<script src="CSS/English.js" type="text/javascript"></script>
</head>
<body>
	<%
		if (request.getSession().getAttribute("user") != null) {
			User user = (User) request.getSession().getAttribute("user");
	%>
	<%=user.getUName()%>
	<%
		}
	%>

	<div class="head">
		<div class="left">
			<img src="images/logo.jpg" />
		</div>
		<div class="right">
			<img src="images/phone.jpg" />
		</div>
	</div>


	<div class="banner">
		<ul class="banner_pic" id="banner_pic">
			<li class="current"><img class="one" src="images/03.png" /></li>
			<li class="pic"><img class="one" src="images/02.jpg" /></li>
			<li class="pic"><img class="one" src="images/01.jpg" /></li>
		</ul>
		<ol id="button">
			<li class="current"></li>
			<li class="but"></li>
			<li class="but"></li>
		</ol>
	</div>

	<div id="learn">
		<h2>学好英语网简介</h2>
		<dl>
			<dt></dt>
			<dd class="txt1">你知道学好英语网吗？</dd>
			<dd class="txt2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				不论你的学习英语是为了满足日常沟通需要，还是为了工作和职业的发展，不论你现在的英语水平处在哪个阶段，
				想要往哪个阶段，我们的英语都能帮你达成目标，来自于美国硅谷”DyEd International“
				经历16年在全球80多个国家的成功实践，听说读写全面覆盖的教学内容，为您提供原生地道的英语学习环境，
				从入门带精通的9个级别的英语晋升阶梯，让你的学习成为轻松、快乐的旅程！ 高雅、舒适的学习环境，为您提供一个高端人士社交的平台。</dd>
		</dl>
		<div class="imgbox" id="imgbox">
			<span> <a href="#"><img src="images/1.jpg" /></a> <a href="#"><img
					src="images/2.jpg" /></a> <a href="#"><img src="images/3.jpg" /></a>
				<a href="#"><img src="images/4.jpg" /></a>
			</span>
		</div>
	</div>

	<div id="features">
		<h2>网站特色</h2>
		<div class="list0">
			<div id="SwitchBigPic">
				<span class="sp"><a href="#"><img src="images/111.jpg" /></a></span>
				<span><a href="#"><img src="images/222.jpg" /></a></span> <span><a
					href="#"><img src="images/333.jpg" /></a></span>
			</div>
			<ul id="SwitchNav">
				<li><a class="txt_img1" href="#"></a></li>
				<li><a class="txt_img2" href="#"></a></li>
				<li><a class="txt_img3" href="#"></a></li>
			</ul>
		</div>

		<div class="list1">
			<img src="images/zhuce.jpg"></img>
			<form action="User.do" method="post" class="biaodan">
				<input type="hidden" name="method" value="login" />
				<table class="content">
					<tr>
						<td class="left"><p style="width: 100px">用户名:</p></td>
						<td><input type="text" class="txt01" name="userName"
							placeholder="请输入用户名" /></td>
					</tr>

					<tr>
						<td class="left">密码:</td>
						<td><input type="password" class="txt01" name="password"
							placeholder="请输入密码" /></td>
					</tr>

					<tr>
						<td><input class="no_border" type="submit" value="登录" /></td>
						<td><input class="no_border" type="reset" value="取消" /></td>
					</tr>
				</table>
			</form>
			<a href="${pageContext.request.contextPath}/Register.jsp"><img
				style="margin-top: 40px" src="images/register.jpg"></img></a>
		</div>
	</div>

	<div class="footer">INVINCIBLE &nbsp;&nbsp;版权所有
		&nbsp;&nbsp;2000-2021 &nbsp;&nbsp;泉州信息工程学院 &nbsp;&nbsp;青春小队</div>

</body>
</html>