<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 24.02.2020
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Daily Consumption</title>
</head>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
    .w3-grey {
    }
</style>
</head>
<style>
    body {
        background: rgba(34, 100, 114, 0.88);
        color: #fff; /головний колір фону і тексту
    }
</style>
</body>

<body>

<form>
    <div>
        <label for="bday">Enter date of consumption:</label>
        <input type="date" id="bday" name="bday" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
        <span class="validity"></span>
    </div>
    <div>
        <input type="submit">
    </div>
</form



</body>
</html>
