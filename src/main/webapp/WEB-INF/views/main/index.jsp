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
        .container-top-2{
            margin-left: 80px;
            margin-right: 20px;
            width: 1125px;
        }
    </style>
</head>
<body>

<jsp:include page="../header/header.jsp"></jsp:include>
<div class="container-top">
    <div class="container-top-1">
        <span id="test" onclick="detailSearch()">상세검색</span>
    </div>
    <div class="container-top-2" id="detail" style="display: none;">
        <div class="col-10">
            <div class="p-3 border bg-body">
                <form action="board/"
                <input type="radio" value="boardGender">무관
                <input type="radio" value="boardGender">남자
                <input type="radio" value="boardGender">여자
            </div>
        </div>
    </div>
</div>
    <div class="container">
        <div class="row g-2">
            <c:forEach var="boardIndex" items="${boardIndexList}">
            <div class="col-3">
                <a id="board" href="/board/detail?boardTitle=${boardIndex.indexTitle}">
                <div class="p-3 border bg-light" style="">
                        ${boardIndex.indexName}<br>
                        ${boardIndex.indexTitle}<br>
                        ${boardIndex.indexArea2}<br>
                        ${boardIndex.indexMoney}
                </div>
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
</body>
<script>
    const detailSearch = () => {
        const detail = document.getElementById("detail");
        if(detail.style.display == "none"){
            detail.style.display = "block";
        }else{
            detail.style.display = 'none';
        }
    }
</script>
</html>
