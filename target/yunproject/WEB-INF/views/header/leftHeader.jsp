<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-13
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../../resources/css/my.css">

    <script src="../../../resources/js/jquery.js"></script>
    <script src="../../../resources/js/myPage.js"></script>
    <style>
        #searchButton{
            width: 180px;
            margin: 0 auto;
            margin-left: 9px;
            border: 2px solid #222222;
            background-color: white;
            font-size: 14px;
            margin-top: 10px;
            padding: 4px 0 4px 14px;
            border-radius: 4px;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="wrapper">
    <div class="topbar" style="position: absolute; top:0;">
        <!-- 왼쪽 메뉴 -->
        <div class="left side-menu">
            <div class="sidebar-inner">
                <div id="sidebar-menu">
                    <ul>
                        <li class="has_sub"><a href="javascript:void(0);" class="waves-effect">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                            </svg>
                        </a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 왼쪽 서브 메뉴 -->
        <div class="left_sub_menu">
            <div class="sub_menu">
                <form action="/board/search" method="get" name="searchForm">
                <input type="search" name="q" placeholder="SEARCH">
                    <input type="button" id="searchButton" onclick="menuSearch()" value="검색">
                </form>
                <h2>MENU</h2>
                <ul class="big_menu">
                    <li>개인회원</li>
                    <ul class="small_menu">
                        <li>
                            <a href="/member/memberDetail?id=${sessionScope.loginId}">내 정보</a>
                        </li>
                        <li><a onclick="carrer()">이력서 등록</a></li>
                        <li><a href="#">소메뉴1-4</a></li>
                    </ul>
                </ul>
                <ul class="big_menu">
                    <li>기업회원</li>
                    <ul class="small_menu">
                        <li>
                            <a onclick="boardIndexSave()">공고등록</a>
                        </li>
                        <li><a href="/enterprise/enterpriseDetail?id=${sessionScope.enterpriseLoginId}">내 정보</a></li>
                    </ul>
                </ul>
                <ul class="big_menu">
                    <c:choose>
                        <c:when test="${sessionScope.loginMemberId != null}">
                            <li>
                                <a onclick="myPage()">마이페이지</a>
                            </li>
                        </c:when>
                    </c:choose>
                </ul>
            </div>
        </div>
        <div class="overlay"></div>
    </div>
</div>
</body>
<script>
    const menuSearch = () => {
        document.searchForm.submit();
    }
    const myPage = () => {
        if(${sessionScope.loginEnterpriseId != null}){
            location.href = "/enterprise/myPage";
        }else{
            location.href = "/member/myPage";
        }
    }
    const boardIndexSave = () => {
        if(${sessionScope.loginEnterpriseId != null}){

            location.href = "/boardIndex/save?id=${sessionScope.enterpriseName}";
        }else{
            alert("기업회원만 작성할 수 있습니다.");
        }
    }
    const carrer = () => {
        if(${sessionScope.loginMemberId != null}){
            location.href = "/member/carrer?id=${sessionScope.loginId}";
        }else{
            alert("개인회원만 작성할 수 있습니다.")
        }
    }
</script>
</html>
