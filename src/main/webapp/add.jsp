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

        <form  id="add_form" method="post" action="Add"class="w3-selection w3-light-grey w3-padding">
            <input id="add_redirect" type="hidden" value="/data-received">
            <label  for="Login">Login:
                <input type="text"  id="Login" name="Login" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <label for="Password">Password:
                <input type="password" id="Password" name="Password" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <label for="Name_of_institution">Name_of_institution:
                <input type="text" id="Name_of_institution" name="Name_of_institution" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 60%"><br />
            </label>
            <label for="Head_of_institution">Head_of_institution:
                <input type="text" id="Head_of_institution" name="Head_of_institution" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 60%"><br />
            </label>
            <label for="Phone_number">Phone_number:
                <input type="text" id="Phone_number" name="Phone_number" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
            </label>
            <input class="w3-btn w3-green w3-round-large w3-margin-bottom" onclick="checkaddForm(); return false;" type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom" value="Submit">
        </form>
    </div>
</div>

<div class="w3-container w3-opacity w3-right-align w3-padding">
<a href="/index.jsp"  class="w3-btn w3-round-large" >back to main</a>
</div>

</body>
</html>