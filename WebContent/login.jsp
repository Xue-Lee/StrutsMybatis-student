<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		margin: 100px auto; 
	}
</style>

</head>
<body>
	<form action="login" method="POST">
		<table class="tab">
			<thead style="text-align: center;font-size:30px">学生选课系统登录</thead>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="stuName" value="" placeholder="请输入用户名" /></td>
			</tr>
			<tr>
				<td>学号</td>
				<td><input type="text" name="stuId" value="" placeholder="请输入密码" /></td>
			</tr>
			<tr><td><input type="submit" value="登录"/></td></tr>
		</table>
	
	</form>
</body>
</html>