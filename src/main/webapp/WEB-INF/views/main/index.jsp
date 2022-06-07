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
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
    <style>
        #test{

        }
    </style>
</head>
<body>
<iframe name="hframe4" style="display: none;"></iframe>
<div class="main-header">
    <div class="main-button">
        <a href="/member/save">회원가입</a>
    </div>
    <div id="test" class="main-button">
        <a onclick="login()">로그인</a>
    </div>
    <c:choose>
        <c:when test="${sessionScope.loginMemberId != null}">
            <p>sdfsdf</p>
            <a class="logout" href="/member/logout">로그아웃</a>
        </c:when>
    </c:choose>
</div>
</body>
<script>
    const login = () => {
        var ww=450;
        var wh=400;

        var top=(screen.availHeight-wh)/2;
        var left=(screen.availWidth-ww)/2;

        window.open('/homeLogin','get','width='+ww+', height='+wh+', top='+top+', left='+left+',toolbar=no, menubar=no, scrollbars=no, resizable=no' );

    }
</script>
</html>
