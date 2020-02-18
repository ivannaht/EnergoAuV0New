<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 10.02.2020
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new Institution</title>
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

<div class="w3-container w3-center w3-green">
    <h2>Add photo</h2>
</div>

<form method="post" multipart="" enctype="multipart/form-data" class="w3-selection w3-light-grey w3-padding">
<input type="file" name="img[]" multiple class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
<button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Submit</button>
</form>

<div class="w3-card-2">
   <img src="/photos/photo15021437.jpg" align=left style='width:245pt;height:164pt;visibility:visible;mso-wrap-style:square'o:title="Фото 1"; alt="main photo"/>
    <div class="w3-container">
    </div>

</html>