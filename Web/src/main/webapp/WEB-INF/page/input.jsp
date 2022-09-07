<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath() %>/scripts/jquery-3.2.1.js"></script>
    <title>Insert title here</title>
    <script type="text/javascript">
        function aa() {
            $('#head').trigger("click");
        }
    </script>
</head>
<body>


<!-- 数据模型。实体对象，用来新增与回显 -->
<form:form action="${pageContext.request.contextPath}/user" method="POST" modelAttribute="user"
           enctype="multipart/form-data">

    <br/>
    <br/><br/>
    <c:if test="${user.id ==null}">
        <fmt:message key="a.xmd"></fmt:message><form:input path="name"/><br>
    </c:if>

    <!-- 修改 -->
    <c:if test="${user.id != null}">
        <form:hidden path="id"/>
        <input type="hidden" name="_method" value="PUT"/>
    </c:if>

    <fmt:message key="a.xbd"></fmt:message><form:radiobuttons path="sex" items="${sex }"/><br>

    <c:if test="${user.id != null  && user.id != 0}">
        <img alt="" src="<%=request.getContextPath() %>/head/show?id=${id }" width="50" height="50" onclick="aa()">
    </c:if>
    <fmt:message key="a.txd"></fmt:message> <input type="file" name="head" id="head"><br>

    <fmt:message key="a.sjd"></fmt:message> <form:input path="birth"/><br>
    <fmt:message key="a.sld"></fmt:message><form:input path="salary"/><br>

    <input type="submit" <fmt:message key="a.bcd"></fmt:message>/>
</form:form>

aaa
</body>
</html>