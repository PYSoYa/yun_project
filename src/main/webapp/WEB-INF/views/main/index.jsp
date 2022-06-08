<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-03
  Time: 오후 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css"/>
    <style>
        header {
            height: 40px;
            padding: 1rem;
            color: #222222;
            background-color: white;
            font-weight: bold;
            font-size: 12px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            float: right;
        }
        .nav-item{
            margin-right: 8px;
        }
    </style>
</head>
<body>
<%--<iframe name="hframe4" style="display: none;"></iframe>--%>
<header>
<ul class="nav nav-pills">

    <c:choose>
        <c:when test="${sessionScope.loginMemberId != null}">
            <li class="nav-item">
                <a onclick="logout()">로그아웃</a>
            </li>
            <li class="nav-item">
                <a onclick="myPage()">마이페이지</a>
            </li>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${sessionScope.loginMemberId == null && sessionScope.loginEnterpriseId == null}">
            <li id="test" class="nav-item">
                <a onclick="login()">로그인</a>
            </li>
            <li class="nav-item">
                <a onclick="signup()">회원가입</a>
            </li>
        </c:when>
    </c:choose>
    <c:choose>
        <c:when test="${sessionScope.loginEnterpriseId != null}">
            <li class="nav-item">
                <a onclick="enterpriseLogout()">로그아웃</a>
            </li>
            <li class="nav-item">
                <a onclick="enterpriseMypage()">마이페이지</a>
            </li>
        </c:when>
    </c:choose>

</ul>
</header>
</body>
<script>
    const login = () => {
        var ww=450;
        var wh=400;

        var top=(screen.availHeight-wh)/2;
        var left=(screen.availWidth-ww)/2;

        window.open('/homeLogin','get','width='+ww+', height='+wh+', top='+top+', left='+left+',toolbar=no, menubar=no, scrollbars=no, resizable=no' );
    }
    const signup = () => {
        location.href = "/mainSave";
    }
    const logout = () => {
        location.href = "/member/logout";
    }
    const enterpriseLogout = () => {
        location.href = "/enterprise/logout";
    }
    const myPage = () => {

    }
</script>
</html>
