<%--
  Created by IntelliJ IDEA.
  User: nitro5
  Date: 3/10/2566
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Set Your Theme</title>
</head>
<body style="background-color: ${bg_color}">
    <div style="margin: 150px">
        <h3>Select your theme</h3><hr>
        <form action="set-theme" method="post">
            <input type="radio" name="bg" value="silver">
            <label style="background-color: silver">&nbsp; &nbsp; </label>
            &nbsp;Silver<br>
            <input type="radio" name="bg" value="gold">
            <label style="background-color: gold">&nbsp; &nbsp; </label>
            &nbsp;Gold<br>
            <input type="radio" name="bg" value="dodgerblue">
            <label style="background-color: dodgerblue">&nbsp; &nbsp; </label>
            &nbsp;Blue<br>
            <input type="radio" name="bg" value="wheat">
            <label style="background-color: wheat">&nbsp; &nbsp; </label>
            &nbsp;Wheat <br>
            <hr>
            <input type="submit" value="OK">
        </form>

    </div>

</body>
</html>
