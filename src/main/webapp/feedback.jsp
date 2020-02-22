<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 15.02.2020
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ><head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="table_fd.css"/>
    <title>Feedback</title>
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
label {class: "w3-row-padding";
    inputclass: "w3-input"; type:"text";
}

</style>
</body>

<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
    <h1>Energy audit of budgetary institutions</h1>
</div>

<div class="w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h2>Feedback</h2>
    </div>
    <div >
<h4>Messages of inquiry will be answered as time permits. All fields are required.</h4>
    </div>

                                <form class="w3-container" id="feedback_form" method="post" action="FeedbackFormServlet">
                                    <input id="feedback_redirect" type="hidden" value="/feedback-received">


                                            <label for="First_Name">First name</label>
                                            <input class="w3-input" id="First_Name" name="First_Name" type="text" placeholder="First name" style="width: 300px;">

                                            <label for="Last_Name">Last name</label>
                                            <input class="w3-input" id="Last_Name"  name="Last_Name" type="text" placeholder="Last name" style="width: 300px;" >

                                            <label for="Email">Email</label>
                                            <input class="w3-input"   id="Email" name="Email"type="email" placeholder="Enter email address" style="width: 300px;" >

                                            <label for="Subject">Subject</label>
                                    <div style="width: 300px;">
                                            <select  class="w3-select" id="Subject" name="Subject">
                                                <option value="" disabled selected>Choose your subject</option>
                                                <option value="suggestion">Suggestion</option>
                                                <option value="factual error">Factual Error</option>
                                                <option value="technical problem with website">Technical Problem</option>
                                                <option value="other">Other</option>
                                            </select>
                                    </div>
                                            <label class="w3-input"for="Comments">Comments</label>
                                            <textarea id="Comments" name="Comments" placeholder="Comments" cols="120" rows="5" type="text"></textarea>

                                        <input class="button" onclick="checkFeedbackForm(); return false;" type="submit" value="Submit feedback">

                                </form>

    <div class="w3-container w3-opacity w3-right-align w3-padding">
        <a href="/index.jsp"  class="w3-btn w3-round-large" >back to main</a>
    </div>

   </body>
</div>
</html>
