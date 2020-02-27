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
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Energy audit of budgetary institutions</h1>
</div>

<div class="w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h2>Daily consumption of energy resources</h2>
    </div>
<body>

<form>
    <div>
        <label for="bday">Enter date of consumption:</label>
        <input type="date" id="bday" name="bday" required pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}">
        <span class="validity"></span>
    </div>

</form>
<div><h3>Costs, UAH:</h3></div>
<form onsubmit="return false" oninput="res.value = quant.valueAsNumber*price.valueAsNumber">
    <fieldset style="width: 50%">
        <legend>electricity</legend>
        <input type="number" placeholder="Quantity, kWh" id="quant" name="quant" />
        <input type="number" placeholder="Price for kWh (including VAT) UAH" id="price" name="price" />
             <output for="quant name" name="res" />
        </fieldset>
   </form>
<form onsubmit="return false" oninput="res.value = quant.valueAsNumber*price.valueAsNumber">
<fieldset style="width: 50%">
        <legend>gas</legend>
        <input type="number" placeholder="Quantity, cubic m" id="quant" name="quant" />
        <input type="number" placeholder="Price UAH for cubic m (including VAT)" id="price" name="price" />
        <output  for="quant name" name="res" />
  </fieldset>
   </form>
<form onsubmit="return false" oninput="res.value = quant.valueAsNumber*price.valueAsNumber">
    <fieldset style="width: 50%">
        <legend>heat energy</legend>
        <input type="number" placeholder="Quantity, Gcal" id="quant" name="quant" />
        <input type="number" placeholder="Price UAH for Gcal (including VAT)" id="price" name="price" />
        <output  for="quant name" name="res" />
    </fieldset>
</form>

<input type="submit" value="Submit" />


</body>
</html>
