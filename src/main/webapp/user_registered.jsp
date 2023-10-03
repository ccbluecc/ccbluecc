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
    <title>Title</title>
</head>
<body>
<c:forEach items="${courseRegistered.history}" var="entry">
    <h3>Semester ${entry.key}</h3><hr>
    <c:forEach items="${entry.value}" var="subject">
        ${subject.subjectId},${subject.title},${subject.credit}<br>
    </c:forEach>
    <hr>

</c:forEach>

</body>
</html>
