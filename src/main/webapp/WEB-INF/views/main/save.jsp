<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오전 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="../../../resources/js/jquery.js"></script>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css"/>
    <style>
        #nave{
            border:1px solid white;
            border-inline-style: hidden;
            height:200px;
            width: 700px;
            position: absolute;
            top: 50% ;
            left: 35%;
            margin-top: 100px;
            margin-left: -100px;
        }
        #nav-li{
            margin-right: 80px;
        }
        #nav-li1{
            margin-left: 100px;
        }
        #btn1{
            width: 200px;
            height: 40px;
            background-color: #222222;
            display: inline-block;
            font-family: 'Noto Sans KR', sans-serif;
            border-color: #222222;
            border-radius: 4px;
            color: white;
        }
        #btn2{
            width: 200px;
            height: 40px;
            background-color: white;
            display: inline-block;
            font-family: 'Noto Sans KR', sans-serif;
            border-color: #222222;
            border-radius: 4px;
            color: black;
        }

    </style>
</head>
<body>
<ul id="nave" class="nav nav-pills">
    <li id="nav-li" class="nav-item">
        <button id="btn1" onclick="memberSave()">개인 회원가입</button>
    </li>
    <li id="nav-li1" class="nav-item">
        <button id="btn2" onclick="enterpriseSave()">기업 회원가입</button>
    </li>
</ul>
</body>
<script>
    const memberSave = () => {
        location.href = "/member/save";
    }
    const enterpriseSave = () => {
        location.href = "/enterprise/save";
    }
</script>
</html>
