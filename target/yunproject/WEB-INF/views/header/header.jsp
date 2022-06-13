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
    <style>
        .header-container {
            width: 1680px;
            margin: 10px 40px 10px 0;
            padding: 0;
            display: flex;
            border-bottom: solid black;
        }

        .img-container {
            width: 230px;
        }

        .menu-container {
            margin-left: auto;
            padding-right: 20px;
            text-align: right;
            font-size: 14px;
            font-weight: 600;
            display: flex;
        }

        .menu-container a {
            text-decoration: none;
            display: flex;
            margin-left: 10px;
        }
        #main-header{
            display: flex;
        }
        .container-top{
            margin-bottom: 40px;
        }
        .container-top-1{
            text-align: right;
            margin-right: 20px;
        }
        .container-top-2{
            margin-left: 80px;
            margin-right: 20px;
            width: 1125px;
        }
        .search{
            display: flex;
        }
        .search-1{
            margin-left: 20px;
        }
        .search-2{
            margin-left: 20px;
        }
    </style>
</head>
<body>


<header>
    <div class="header-container">
        <div class="img-container">
            <img src="../../../resources/img/work.jpg" onclick="home()" alt="..">
        </div>
        <div class="menu-container">
                <ul id="main-header">
                    <li>
                        <a onclick="home()">메인</a>
                    </li>
                    <c:choose>
                        <c:when test="${sessionScope.loginMemberId != null}">
                            <li>
                                <a onclick="logout()">로그아웃</a>
                            </li>
                        </c:when>
                    </c:choose>
                    <c:choose>
                        <c:when test="${sessionScope.loginMemberId == null && sessionScope.loginEnterpriseId == null}">
                            <li id="test">
                                <a onclick="login()">로그인</a>
                            </li>
                            <li>
                                <a onclick="signup()">회원가입</a>
                            </li>
                        </c:when>
                    </c:choose>
                    <c:choose>
                        <c:when test="${sessionScope.loginEnterpriseId != null}">
                            <li>
                                <a onclick="enterpriseLogout()">로그아웃</a>
                            </li>
                        </c:when>
                    </c:choose>
                </ul>
        </div>
    </div>
</header>
<div class="container-top">
    <div class="container-top-1">
        <span onclick="detailSearch()">상세검색</span>
    </div>
    <div class="container-top-2" id="detail" style="display: none;">
        <div class="col-10">
            <div class="p-3 border bg-body">
                <form action="/board/searchDetail" method="get" name="searchDetail">
                    <div class="search">
                        <div class="search-1">
                            <select id="boardGender" name="boardGender">
                                <option value="">성별</option>
                                <option value="무관">무관</option>
                                <option value="남자">남자</option>
                                <option value="여자">여자</option>
                            </select>
                        </div>
                        <div class="search-2">
                            <select id="boardOccupation" name="boardOccupation">
                                <option value="">업직종별</option>
                                <option value="서비스">서비스</option>
                                <option value="IT.기술">IT.기술</option>
                            </select>
                        </div>
                        <input type="button" onclick="search()" value="검색">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    const home = () => {
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

</script>
</html>
