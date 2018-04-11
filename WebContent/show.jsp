<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.tab{
	width:900px;
	margin:100px auto;
	}
	.tab td{
	height:30px
	border-bottom:1px solid #999;
	}
</style>
</head>
<body>
<h1>Struts</h1>
<h1>系统主页${user.userName }</h1>
<table class="tab">
	<tr><td>编号</td><td>姓名</td><td>押金</td><td>预定数量</td></tr>
	<c:forEach items="${clist }" var="client">
	<tr>
		<td>${client.clientId }</td>
		<td>${client.clientName }</td>
		<td>${client.foregift }</td>
		<td>${client.bucketCnt }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>