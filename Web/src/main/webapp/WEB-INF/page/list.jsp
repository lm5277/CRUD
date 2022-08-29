<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--  
	SpringMVC 处理静态资源:
	1. 为什么会有这样的问题:
	优雅的 REST 风格的资源URL 不希望带 .html 或 .do 等后缀
	若将 DispatcherServlet 请求映射配置为 /, 
	则 Spring MVC 将捕获 WEB 容器的所有请求, 包括静态资源的请求, SpringMVC 会将他们当成一个普通请求处理, 
	因找不到对应处理器将导致错误。
	2. 解决: 在 SpringMVC 的配置文件中配置 <mvc:default-servlet-handler/>
-->
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery-3.2.1.js"></script>
</head>
<script type="text/javascript">
$(function(){
	$(".delete").click(function(){
		var href = $(this).attr("href");
		/* alert(href); */
		$("form").attr("action", href).submit();			
		return false;
	});
	
	
	$("#lang").change(function(){
		var lang = $("#lang").val();
		window.location.href="users?locale=" +lang;
		
	});
	
	var abc = '${locale}';//获取request里面的值
	$("#lang").val(abc);
})

</script>
<body>

	<select id="lang" >
		<option value="en_US">英文</option>
		<option value="zh_CN">中文</option>
	</select>
	

	<form action="" method="POST">
		<input type="hidden" name="_method" value="DELETE"/>
		<input type="submit">
	</form>
	
	
	<c:if test="${empty requestScope.users }">
		没有任何员工信息.
	</c:if>
	<c:if test="${!empty requestScope.users }">
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th><fmt:message key="a.id"></fmt:message></th>
				<th><fmt:message key="a.tx"></fmt:message></th>
				<th><fmt:message key="a.xm"></fmt:message></th>
				<th><fmt:message key="a.xb"></fmt:message></th>
				<th><fmt:message key="a.sl"></fmt:message></th>
				<th><fmt:message key="a.sj"></fmt:message></th>
				<th><fmt:message key="a.xg"></fmt:message></th>
				<th><fmt:message key="a.sc"></fmt:message></th>
			</tr>
			
			<c:forEach items="${requestScope.users }" var="user">
				<tr>
					<td>${user.id }</td>
					<td><img width="50" height="50" alt="" src="head/show?id=${user.id }"></td>
					<td>${user.name }</td>
					<td>${user.sex == 0 ? '男' : '女' }</td>
					<td>${user.salary }</td>
					<td>${user.birth }</td>
					<td><a href="user/${user.id}"><fmt:message key="a.xg"></fmt:message></a></td>
					<td><a class="delete" href="user/${user.id}"><fmt:message key="a.sc"></fmt:message></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<br>
	<br>
	<br>
	<br>
	<a href="addUserShow"><fmt:message key="a.add"></fmt:message></a>
</body>
</html>
