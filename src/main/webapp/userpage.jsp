<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 10.02.2020
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<p>
<head>
    <meta charset="UTF-8">
    <title>Userpage</title>
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

<p>

<div class="w3-container w3-opacity w3-right-align">
    <h1>Energy audit of budgetary institutions</h1>
</div>
<div class="w3-card-4">
    <div class="w3-container w3-center w3-green">
    <h2> Name_of_institution</h2>
</div>

<td align="center">
<table width="200" bgcolor="#c0c0c0" cellspacing="5" cellpadding="5" border="1" align="left">
    <form  method="post" action="Certificate">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Certificate"></td></tr></form>
    <form  method="post" action="EditSql">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Edit data"></td></tr></form>
    <form  method="post" action="DisplayPhoto">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Display photos"></td></tr></form>
    <form  method="get" action="Feedback">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Feedback"></td></tr></form>
    <form  method="post" action="">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Sign out"></td></tr></form>


</table>
</td>
    <img src="image0012.jpg" align=left style='width:245pt;height:164pt;visibility:visible;mso-wrap-style:square'o:title="Фото"; alt="діаграма"/>


<form  method="post" action="ListSql">
        <%
	String Login =  request.getParameter("Login");
	String Password = request.getParameter("Password"); //потім вилучити цей рядок
	String Name_of_institution = request.getParameter("pass");
	String Head_of_institution = request.getParameter("address");
	String Phone_number = request.getParameter("age");

%>



    </head>
    <body>
        <table style= "width: 50%; background-color: #e7e7e7; color: #020202; margin-left: 50%; border: #B2E2D7;line-height: 2.5;">
        <tr>
            <td>Login</td>
            <td><%= Login %></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><%= Password %></td>
        </tr>
        <tr>
            <td>Name_of_institution</td>
            <td><%= Name_of_institution %></td>
        </tr>
        <tr>
            <td>Head_of_institution</td>
            <td><%= Head_of_institution %></td>
        </tr>
        <tr>
            <td>Phone_number</td>
            <td><%= Phone_number %></td>
        </tr>
    </table>
     </body>
</form>

</html>
