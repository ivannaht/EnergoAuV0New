<%--@ page language="java"
         contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"--%>
<%--@ page import ="java.sql.*"--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
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

        <h3><p> You are logged in as  "<%=request.getAttribute("LoginUser")%>" </p></h3>

</div>

<td align="center">
<table width="200" bgcolor="#c0c0c0" cellspacing="5" cellpadding="5" border="1" align="left">
    <form  method="post" action="Certificate">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Certificate"></td></tr></form>
    <form  method="post" action="EditSql">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Edit data"></td></tr></form>
    <form  method="post" action="DisplayPhoto">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Display photos"></td></tr></form>
    <form  method="get" action="DailyConsumption">
        <tr><td colspan="2" style="text-align: center"><input type="submit"  value="Daily consumption"></td></tr></form>
    <form  method="get" action="Feedback">
        <tr><td colspan="2" style="text-align: center"><input type="submit" value="Feedback"></td></tr></form>
    <form  method="post" action="">
        <tr><td colspan="2" style="text-align: center"><input type="submit"  value="Sign out"></td></tr></form>


</table>
</td>
    <img src="image0012.jpg" align=left style='width:290pt;height:190pt;visibility:visible;mso-wrap-style:square'title="Image"; alt="image not found"/>

   <form  method="post" action="Sign">
    <table style= "width: 50%; background-color: #e7e7e7; color: #020202; margin-left: 50%; border: #B2E2D7;line-height: 2.5;">
        <tr>
            <td>Login</td>
            <td><%=request.getAttribute("LoginUser")%></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><%=request.getAttribute("PasswordUser")%></td>
        </tr>
        <tr>
            <td>Name of institution</td>
            <td><%=request.getAttribute("Name_of_institutionUser")%></td>
        </tr>
        <tr>
            <td>Head of institution</td>
            <td><%=request.getAttribute("Head_of_institutionUser")%></td>
        </tr>
        <tr>
            <td>Phone number</td>
            <td><%=request.getAttribute("Phone_numberUser")%></td>
        </tr>

        <%-- building_parameters--%>
        <tr>
            <td>Locations</td>
            <td><%=request.getAttribute("LocationsUser")%></td>
        </tr>
        <tr>
            <td>Settlement</td>
            <td><%=request.getAttribute("SettlementUser")%></td>
        </tr>
        <tr>
        <tr>
            <td>Region</td>
            <td><%=request.getAttribute("RegionUser")%></td>
        </tr>
        <tr>
            <td>Functional purpose</td>
            <td><%=request.getAttribute("Functional_purposeUser")%></td>
        </tr>
        <tr>
            <td>Year of commissioning</td>
            <td><%=request.getAttribute("Year_of_commissioningUser")%></td>
        </tr>
        <tr>
            <td>Number of floors</td>
            <td><%=request.getAttribute("Number_of_floorsUser")%></td>
        </tr>
        <tr>
            <td>Id number</td>
            <td><%=request.getAttribute("Id_numberUser")%></td>
        </tr>

        <%-- main_indicators--%>
        <tr>
            <td>Heated area</td>
            <td><%=request.getAttribute("Heated_areaUser")%></td>
        </tr>
        <tr>
            <td>Heated volume</td>
            <td><%=request.getAttribute("Heated_volume")%></td>
        </tr>
        <tr>
            <td>Specific energy consumption, kWh for m3</td>
            <td><%=request.getAttribute("Specific_energy_consumption_kWh_for_m3User")%></td>
        </tr>
        <tr>
            <td>Specific consumption of primery_energy</td>
            <td><%=request.getAttribute("Specific_consumption_of_primery_energyUser")%></td>
        </tr>
        <tr>
            <td>Specific CO2 emissions</td>
            <td><%=request.getAttribute("Specific_CO2_emissionsUser")%></td>
        </tr>
        <tr>
            <td>Energy efficiency class</td>
            <td><%=request.getAttribute("Energy_efficiency_classUser")%></td>
        </tr>
        <tr>
            <td>Date of data entry</td>
            <td><%=request.getAttribute("Date_of_data_entryUser")%></td>
        </tr>
    </table>
</form>

    <table center>
        <tr>
            <th>location</th>
            <td><%=request.getAttribute("location")%></td>
        </tr>
    </table>


</html>
