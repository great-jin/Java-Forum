<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.blog.domain.User"%>
<%@ page import="java.util.List"%>
<%@ page import="com.blog.domain.Article"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<input type="radio" value="1" name="aCategory" />CET-4
	<input type="radio" value="2" name="aCategory" />CET-6
	<input type="radio" value="3" name="aCategory" />广播
	<input type="radio" value="4" name="aCategory" />趣闻
	<input type="radio" value="5" name="aCategory" />励志
	<input type="radio" value="6" name="aCategory" />雅思
	<input type="radio" value="7" name="aCategory" />托福
	<br>
	<%
		Article article = (Article) session.getAttribute("articleall");
	%>
	<tr>
		<td><%=article.getAHead()%></td>
	</tr>

</body>
</html>