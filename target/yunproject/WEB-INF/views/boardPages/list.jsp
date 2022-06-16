<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-13
  Time: 오후 1:09
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
        .money {
            text-align: right;
        }
        .container{
            margin-top: 74px;
        }
    </style>
</head>
<body>
<jsp:include page="../header/header.jsp"></jsp:include>
<jsp:include page="../header/leftHeader.jsp"></jsp:include>
<div class="container">
    <div class="row g-2">
        <c:forEach var="boardIndex" items="${boardIndexList}">
            <div class="col-12">
                <a class="a-tag" id="board" href="/board/detail?id=${boardIndex.id}">
                    <div class="p-3 border bg-light" style="color: #222222">
                            ${boardIndex.indexName}<br>
                            ${boardIndex.indexTitle}<br>
                            ${boardIndex.indexArea2}<br>
                                <fmt:formatDate pattern="yyyy.MM.dd"
                                                value="${boardIndex.indexDate}"></fmt:formatDate>
                            <div class="money">
                            ${boardIndex.indexMoney}
                            </div>
                    </div>
                </a>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
