<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-07
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../../resources/css/login.css">
    <script src="../../../resources/js/jquery.js"></script>
</head>
<body>
    <button class="btn-login" onclick="loginMember()">개인 로그인</button>
    <button class="btn-login1" onclick="loginEnterprise()">기업 로그인</button>
    <form action="/member/login" method="post" name="memberLogin">
        <div id="test" style="display: block" class="main" >
            <h2>Login</h2>
            <div class="text">
                <input type="text" style="margin-bottom: 10px;" name="memberId" id="memberId" placeholder="ID">
            </div>
            <div class="text">
                <input type="password" id="memberPassword" name="memberPassword" placeholder="Password"> <br>
            </div>
            <h6><a style="margin-bottom: 10px;" href="/member/save">signup</a></h6>
            <input type="button" style="margin-top: 20px;" onclick="login()" value="Login">
        </div>
    </form>
    <form action="/enterprise/login" method="post" name="enterpriseLogin">
        <div id="test1" style="display: none" class="main" >
            <h2>Login</h2>
            <div class="text">
                <input type="text" style="margin-bottom: 10px;" name="enterpriseId" id="enterpriseId" placeholder="ID">
            </div>
            <div class="text">
                <input type="password" id="enterprisePassword" name="enterprisePassword" placeholder="Password"> <br>
            </div>
            <h6><a style="margin-bottom: 10px;" href="/member/save">signup</a></h6>
            <input id="button2" type="submit" style="margin-top: 20px;" value="Login">
        </div>
    </form>
</body>
<script>
    const loginMember = () => {
        const test = document.getElementById("test");
        const test1 = document.getElementById("test1");
        if(test1.style.display === 'block'){
            test1.style.display = 'none';
            test.style.display = 'block';
        }else{
            test.style.display = 'block';
        }
    }

    const loginEnterprise = () => {
        const test = document.getElementById("test");
        const test1 = document.getElementById("test1");
        if(test.style.display === 'block'){
            test.style.display = 'none';
            test1.style.display = 'block';
        }else{
            test1.style.display = 'block';
        }
    }
    const login = () =>{
        // document.memberLogin.action="/member/login";


        document.memberLogin.target ="/member/login";
        document.memberLogin.submit();
        opener.location.reload();
        window.open('','_self').close();
        // setTimeout(function() {
        //
        //     window.close();
        //
        // }, 400);

    }
</script>
</html>
