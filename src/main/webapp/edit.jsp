<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 13.02.2020
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
        .w3-grey {
        }
    </style>
</head>
<body class="w3-light-blue">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Energy audit of budgetary institutions</h1>
</div>

<div class="w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h2>Edit information about institution</h2>
    </div>

    <form method="post" class="w3-selection w3-light-grey w3-padding">
        <label>Login:
            <input type="text" name="Login" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Password:
            <input type="password" name="Password" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Name_of_institution:
            <input type="text" name="Name_of_institution" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Head_of_institution:
            <input type="text" name="Head_of_institution" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Phone_number:
            <input type="text" name="Phone_number" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Location:
            <input type="text" name="Location" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Settlement:
            <input type="text" name="Settlement" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Functional_purpose:
            <input type="text" name="Functional_purpose" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Year_of_commissioning:
            <input type="text" name="Year_of_commissioning" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Number_of_floors:
            <input type="text" name="Number_of_floors" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Region:
            <input type="text" name="Region" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Energy_efficiency_class:
            <input type="text" name="Energy_efficiency_class" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Heated_area:
            <input type="text" name="Heated_area" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Heated_volume:
            <input type="text" name="Heated_volume" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Specific_energy_consumption_kWh_for_m3:
            <input type="text" name="Specific_energy_consumption_kWh_for_m3" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Specific_consumption_of_primary_energy:
            <input type="text" name="Specific_consumption_of_primary_energy" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Specific_CO2_emissions:
            <input type="text" name="Specific_CO2_emissions" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>
        <label>Date_of_data_entry:
            <input type="date" name="Date_of_data_entry" class="w3-input w3-animate-input w3-border w3-round-large" style="width: 30%"><br />
        </label>

    <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom">Submit</button>
</form>
</div>
</div>

</body>
</html>
