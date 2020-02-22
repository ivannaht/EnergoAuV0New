<%@ page import="java.io.PrintWriter" %>
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

<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Energy audit of budgetary institutions</h1>
</div>

    <div class="w3-card-4">
        <div class="w3-container w3-center w3-green">
            <h2>Add institution</h2>
        </div>

        <form method="post" class="w3-selection w3-light-grey w3-padding">
            <label>Login:
                <input type="text" name="login" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <label>Password:
                <input type="password" name="pass" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <label>Name_of_institution:
                <input type="text" name="Name_of_institution" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 60%"><br />
            </label>
            <label>Head_of_institution:
                <input type="text" name="Head_of_institution" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 60%"><br />
            </label>
            <label>Phone_number:
                <input type="text" name="Phone_number" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Submit</button>
        </form>
    </div>
</div>

<div class="w3-container w3-opacity w3-right-align w3-padding">
<a href="/index.jsp"  class="w3-btn w3-round-large" >back to main</a>
</div>

</body>
</html>