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
        .mainHeader{
            width: 100%;
            display: block;

        }
        .header ul {
            margin-left: 40px;
        }
        .header {
            margin-top: 10px;
            height: 30px;
            width: 100%;
            color: #222222;
            background-color: white;
            font-weight: bold;
            font-size: 12px;
            display: flex;
            margin-bottom: 30px;
            padding-right: 10px;
            /*justify-content: space-between;*/
            float: right;
            border-bottom-style: solid;
        }
        .menu {
            width: 200px;
            height: 40px;
            display: flex;
            margin-bottom: 100px;
            margin-left: 80%;
        }
        .nav-item{
            margin-right: 8px;
        }

    </style>
</head>
<body>
<%--<iframe name="hframe4" style="display: none;"></iframe>--%>
<div class="mainHeader">
    <div class="header">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a onclick="home()">메인</a>
        </li>
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
    </div>
    <div class="menu">
        <ul class="nav" style="float: right;">

            <li class="nav-item">
                <a onclick="boardIndexSave()">공고등록</a>
            </li>
            <li class="nav-item">
                <a onclick="carrer()">이력서 등록</a>
            </li>
        </ul>
    </div>
</div>


</body>
<script>
    const carrer = () => {
        location.href = "/member/carrer";
    }
    const home = () =>{
        location.href = "/";
    }
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
    const boardIndexSave = () => {
        if(${sessionScope.loginEnterpriseId != null}){

        location.href = "/boardIndex/save?id=${sessionScope.enterpriseName}";
        }else{
            alert("기업회원만 작성할 수 있습니다.");
        }
    }
    const myPage = () => {

    }
</script>
</html>
