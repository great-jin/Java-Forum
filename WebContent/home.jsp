<%@ page import="com.blog.domain.Article"%>
<%@ page import="com.blog.serviceimpl.ArticleServiceImpl"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/English.css" type="text/css" rel="stylesheet" />
</head>
<style>
	#cont{
		width:1200px;
		margin:0 auto;
		heigh:auto;
	}
	table{
		width:1000px;
		margin:20px auto;
	}
	table tr{
		boder:1px solid #000000;
	}
	a{
		width:50px;
	}
</style>
<body>
	<div class="head">
		<div class="left">
			<img src="images/logo.jpg" />
		</div>
		<div class="right">
			<img src="images/phone.jpg" />
		</div>
	</div>
	
	<div id="nav">
		<ul class="nav">
			<li><a href="#" class="color_in">热门</a></li>
			<li><a href="${pageContext.request.contextPath }/js.jsp">发布</a></li>

			<form action="Article.do" method="post">
				<input type="hidden" name="method" value="display">
				<li><input class="no_border" type="submit" value="趣闻"/></li>
				
			</form>
			
			<form class="no_border" action="Article.do" method="post">
				<input type="hidden" name="method" value="display"> 
				<input type="hidden" name="ACategory" value="励志">
				<li><input type="submit" value="励志" /></li>
			</form>
			
			<form class="no_border" action="Article.do" method="post">
				<input type="hidden" name="method" value="display"> <input
					type="hidden" name="ACategory" value="雅思">
				<li><input type="submit" value="雅思" /></li>
			</form>
		</ul>
	</div>
	
	<div id="cont">
		<form>
			<table>
				<tr>
					<th>标题</th>
					<th>内容</th>
					<th><div style="width:40px">操作</div></th>
				</tr>
				<%
					ArticleServiceImpl pService = new ArticleServiceImpl();
					List<Article> articleList = null;
					articleList = pService.findAllArticle();
					request.setAttribute("articleList", articleList);
				
					List<Article> list = (List<Article>) request.getAttribute("articleList");
					if (list != null && list.size() > 0) {
						for (Article article : list) {
				%>
				<tr>
					<td style="font-weight:600"><%=article.getAHead()%></td>
					<td style="color:#A3A3A3"><%=article.getAContent().substring(0,160)+"......."%></td>
					<td>
						<a href="article.jsp" style="width:50px;color:#FE9F4B">查看</a>
					</td>
				</tr>
				<%
					}
				}
				%>
			</table>
		</form>
	</div>
	
	<div class="footer">INVINCIBLE &nbsp;&nbsp;版权所有
		&nbsp;&nbsp;2000-2021 &nbsp;&nbsp;泉州信息工程学院 &nbsp;&nbsp;青春小队
	</div>

</body>
</html>