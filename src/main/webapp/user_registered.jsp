<%--
  Created by IntelliJ IDEA.
  User: nitro5
  Date: 26/9/2566
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP-Hello</title>
</head>
<c:set var="bg_color" scope="session" value="${cookie.bg_color_cookie.value}" />
<body style="margin-left: 100px;background-color: ${bg_color}">
<h2>Course Register</h2>
<c:if test="${message!=null}">
    <h3 style="color: red">${message}</h3>
    <c:set var="link" value="course-list" />
</c:if>
<c:if test="${message==null}">
<c:forEach items="${courseRegistered.history}" var="entry">
    <h3>${semesters[entry.key]}</h3><hr>
    <c:forEach items="${entry.value}" var="subject">
        ${subject.subjectId},${subject.title},${subject.credit}<br>
    </c:forEach>
    <hr>
</c:forEach>
    <c:set var="link" value="index.jsp" />
</c:if>
<hr>
<a href="${link}"><button>OK</button></a>
</body>
</html>
