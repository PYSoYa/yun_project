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


    <div class="container">
        <div class="row g-2">
            <c:forEach var="boardIndex" items="${boardIndexList}">
            <div class="col-3">
                <a class="a-tag" id="board" href="/board/detail?boardTitle=${boardIndex.indexTitle}">
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
    const search = () => {
        document.searchDetail.submit();
    }
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
