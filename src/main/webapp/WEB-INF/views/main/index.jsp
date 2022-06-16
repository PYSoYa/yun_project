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
        .mainBoard {
            /*border-style: solid;*/
            /*outline-color: black;*/
            height: 150px;
            width: 100px;
        }
        .row{
            margin-bottom: 10px;
        }
        #board{

        }
        .container-top{
            margin-bottom: 40px;
        }
        .container-top-1{
            text-align: right;
            margin-right: 20px;
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
        .a-tag{
            color: #222222;
            text-decoration: none;
        }
    </style>
</head>
<body>
<jsp:include page="../header/header.jsp"></jsp:include>
<jsp:include page="../header/leftHeader.jsp"></jsp:include>
<div class="container-top">
    <div class="container-top-1">
        <span onclick="detailSearch()">상세검색</span>
    </div>
    <div class="container-top-2" id="detail" style="display: none;">
        <div class="col-12">
            <div class="p-3 border bg-body m-lg-4">
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

    <div class="container">
        <div class="row g-2">
            <c:forEach var="boardIndex" items="${boardIndexList}">
            <div class="col-3">
                <a class="a-tag" id="board" href="/board/detail?id=${boardIndex.id}">
                <div class="p-3 border bg-light" style="">
                        ${boardIndex.indexName}<br>
                        ${boardIndex.indexTitle}<br>
                        ${boardIndex.indexArea2}<br>
                        ${boardIndex.indexMoney}<br>
                            <fmt:formatDate pattern="yyyy.MM.dd"
                                            value="${boardIndex.indexDate}"></fmt:formatDate>
                </div>
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
</body>
<script>

</script>
</html>
