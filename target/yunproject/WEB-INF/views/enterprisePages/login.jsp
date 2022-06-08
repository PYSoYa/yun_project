<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-07
  Time: 오전 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../../resources/css/login.css">
</head>
<body>
<form action="/enterprise/login" method="post">
    <div class="main" >
        <h2>Login</h2>
        <div class="text">
            <input type="text" style="margin-bottom: 10px;" name="enterpriseId" id="enterpriseId" placeholder="ID">
        </div>
        <div class="text">
            <input type="password" id="enterprisePassword" name="enterprisePassword" placeholder="Password"> <br>
        </div>
        <h6><a style="margin-bottom: 10px;" href="/member/save">signup</a></h6>
        <input type="submit" style="margin-top: 20px;" value="Login">
    </div>
</form>
</body>
</html>
