<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-09
  Time: 오전 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="../../../resources/js/jquery.js"></script>
    <style>
        dl{
            display: flex;
        }
        dt{
            width: 80px;
            padding-right: 14px;
            color: #999;
            vertical-align: top;
        }
        dd{
            display: table-cell;
            position: relative;
            width: auto;
            line-height: 22px;
            color: #222;
            word-break: break-all;
        }
        .container-a{
            width: 980px;
            margin-left: 350px;
            border: 1px solid #ededed;
            padding: 0 0 0 0;
        }
        .group-title{
            margin-bottom: 120px;
        }
        .group-a{
            border-top: 1px solid #ededed;
            padding: 0 40px 0;

        }
        .title{
            border-bottom: 1px solid #888484;
            margin-bottom: 10px;
            margin-top: 10px;
            height: 42px;
        }
        .span{
            font-size: 28px;
            font-weight: 700;
        }
        .title-span{
            text-align: right;
            margin-right: 10px;
            font-size: 20px;
            margin-left: 270px;
            margin-top: 40px;
            text-align: left;
        }
        .main-span{
            font-size: 40px;
            font-weight: 700;
        }
        textarea{
            width: 760px;
        }
        #commentWriter{
            border: hidden;
        }
        .comment-container{
            margin-top: 100px !important;
            margin-left: 350px !important;
            margin-bottom: 100px !important;
            padding: 0 40px 0 !important;
            width: 980px !important;
            border: 1px solid #ededed !important;

            /*border-left: 1px solid ;*/
            /*border-right: 1px solid ;*/

        }
        #comment-btn{
            margin-left: 450px;
            width: 100px;
            border-color: white;
            outline: 1px none;
            border-style: none;
            color: white;
            background-color: #222222;
            border-radius: 6px;
        }
        .star{
            display: flex;
            width: 200px;
            font-size: 14px;
            margin-left: 200px;
        }
        .span-star{
            margin-right: 20px;
        }
        .comment-list{
            border-bottom: 1px solid #ededed;
            margin-top: 40px;
        }
        .comment-input{
            border-bottom: 1px solid #ededed;
        }
        .table-td{
            font-weight: 700;
            width: 100px;
        }
        .comment-th{
            border-bottom: 1px solid #dcdbdb;
        }
        .date{
            margin-top: 20px;
            margin-left: 20px;
            margin-bottom: 30px;
        }
        .logo{
            width: 310px;
        }
        .logo-span{
            margin-top: 40px;
            display: flex;
        }
        .title-span dl{
            margin-bottom: 60px;
        }
        .table-star{

        }
    </style>
</head>
<body>
<jsp:include page="../header/header.jsp"></jsp:include>
<jsp:include page="../header/leftHeader.jsp"></jsp:include>
    <div class="container-a">
        <div class="date">
            <span><fmt:formatDate pattern="yyyy-MM-dd" value="${boardDTO.boardDate}"></fmt:formatDate></span>
        </div>
        <div class="group-title" style="margin-left: 32px;">
                <span class="main-span">${boardDTO.boardTitle}</span>

        <div class="logo-span">
            <div class="logo">
                <img src="${pageContext.request.contextPath}/upload/${boardDTO.boardImg}"
                     height="450" width="450">
            </div>
            <div class="title-span">
                <dl>
                    <dt>급여</dt>
                    <dd>${boardDTO.boardMoney}</dd>
                </dl>
                <dl>
                    <dt>근무기간</dt>
                    <dd>${boardDTO.boardWorkperiod}</dd>
                </dl>
                <dl>
                    <dt>근무요일</dt>
                    <dd>${boardDTO.boardWorkDays}</dd>
                </dl>
                <dl>
                    <dt>근무시간</dt>
                    <dd>${boardDTO.boardWorktime}</dd>
                </dl>
            </div>
            </div>
        </div>
        <div class="group-a">
            <div class="title">
            <span class="span">모집조건</span>
            </div>
            <dl>
                <dt>성별</dt>
                    <dd>${boardDTO.boardGender}</dd>
            </dl>
            <dl>
                <dt>나이</dt>
                    <dd>${boardDTO.boardAge}</dd>
            </dl>
            <dl>
                <dt>학력</dt>
                    <dd>${boardDTO.boardEducation}</dd>
            </dl>
            <dl>
                <dt>직종</dt>
                    <dd>${boardDTO.boardOccupation}</dd>
            </dl>
            <dl>
                <dt>근무형태</dt>
                    <dd>${boardDTO.boardDemploymentType}</dd>
            </dl>
            <dl>
                <dt>모집인원</dt>
                    <dd>${boardDTO.boardPersonnel}</dd>
            </dl>
        </div>
        <div class="group-a">
            <div class="title">
            <span class="span">근무조건</span>
            </div>
            <dl>
                <dt>급여</dt>
                <dd>${boardDTO.boardMoney}</dd>
            </dl>
            <dl>
                <dt>근무기간</dt>
                <dd>${boardDTO.boardWorkperiod}</dd>
            </dl>
            <dl>
                <dt>근무요일</dt>
                <dd>${boardDTO.boardWorkDays}</dd>
            </dl>
            <dl>
                <dt>근무시간</dt>
                <dd>${boardDTO.boardWorktime}</dd>
            </dl>
        </div>
        <div class="group-a">
            <div class="title">
            <span class="span">상세모집내용</span>
            </div>
            <dl>
            <dd>${boardDTO.boardContext}</dd>
            </dl>
        </div>
        <div class="group-a">
            <div class="title">
            <span class="span">기업정보</span>
            </div>
            <dl>
                <dt>기업명</dt>
                <dd>${boardDTO.boardName}</dd>
            </dl>
            <dl>
                <dt>기업주소</dt>
                <dd>${boardDTO.boardAddress1}</dd>
            </dl>

        </div>
        <div class="group-a" style="border-bottom: 1px #ededed">
            <div class="title">
            <span class="span">담당자 정보</span>
            </div>
            <dl>
                <dt>이름</dt>
                <dd>${boardDTO.boardManagerName}</dd>
            </dl>
            <dl>
                <dt>이메일</dt>
                <dd>${boardDTO.boardEmail}</dd>
            </dl>
            <dl>
                <dt>전화번호</dt>
                <dd>${boardDTO.boardMobile}</dd>
            </dl>
        </div>
    </div>

<form action="/comment/save" method="post" name="commentForm">
<div class="comment-container">
    <div class="comment-input">
        <dl>
            <dt>평균평점</dt>
            <dd id="starDd"></dd>
        </dl>
    <dl>
    <dt><div class="star" style="color:#222222;">
        <input type="radio" id="commentStar1" name="commentStar" value="☆☆☆☆★"><span class="span-star">☆☆☆☆★</span>
        <input type="radio" id="commentStar2" name="commentStar" value="☆☆☆★★"><span class="span-star">☆☆☆★★</span>
        <input type="radio" id="commentStar3" name="commentStar" value="☆☆★★★"><span class="span-star">☆☆★★★</span>
        <input type="radio" id="commentStar4" name="commentStar" value="☆★★★★"><span class="span-star">☆★★★★</span>
        <input type="radio" id="commentStar5" name="commentStar" value="★★★★★"><span class="span-star">★★★★★</span>
    </div>
    </dt>
    </dl>
    <dl>
        <dt>작성자</dt>
        <dd><input type="text" id="commentWriter" name="commentWriter" value="${sessionScope.loginMemberId}" readonly></dd>
        <dd><button type="button" id="comment-btn" onclick="commentSave()">후기 작성</button></dd>
    </dl>
    <dl>
        <dt style="margin-bottom: 40px;">내용</dt>
        <dd><textarea type="text" id="commentContext" name="commentContext"></textarea></dd>
    </dl>
    </div>
    <div id="comment-list" class="comment-list">
    <table>
        <tr style="text-align: left;">
            <th class="comment-th">댓글</th>
        </tr>
<c:forEach items="${commentDTOList}" var="commentDTO">

        <tr>
            <td class="table-td">${commentDTO.commentWriter}***</td>
            <td>${commentDTO.commentStar}</td>
        </tr>
    <tr>
        <td>${commentDTO.commentContext}</td>
    </tr>
    <tr>

        <td>${commentDTO.commentTime}</td>

    </tr>
<tr>
<%--    <c:choose>--%>
<%--    <c:when test="${sessionScope.loginMemberId == commentDTO.commentWriter}">--%>
        <div class="comment-modify" style="display: none">
        <form action="/comment/modify" method="post" name="commentModify">
            <td><input type="text" id="commentContextModify" name="commentContext"></td>
            <td><button type="button" onclick="commentModify()">수정</button></td>
        </form>
        </div>
<%--    </c:when>--%>
<%--    </c:choose>--%>
</tr>
</c:forEach>
    </table>
    </div>
</div>
</form>
</body>
<script>
    const commentModify = () => {

    }
    const commentSave = () => {
        var starResult1 = 0;
        var starResult2 = "";

        const writer = document.getElementById("commentWriter").value;
        const context = document.getElementById("commentContext").value;
        const star = document.querySelector('input[name="commentStar"]:checked').value;
        $.ajax({
            type: 'post',
            url: '/comment/save',
            data: {
                "boardId":'${boardDTO.id}',
                "commentWriter": writer,
                "commentContext": context,
                "commentStar": star
            },
            dataType: 'json',
            success: function(result){
                if(result != null){
                    let output = "<table>";
                    output += "<tr><th class='comment-th'>댓글</th></tr>";
                    for(let i in result){
                        output += "<tr>" + "<td class='table-td'>"+result[i].commentWriter+"***"+"</td>"
                            + "<td class='table-star'>" + result[i].commentStar + "</td>" + "</tr>";
                        output += "<tr>" + "<td>" + result[i].commentContext + "</td>" + "</tr>";
                        if(result[i].commentStar == "☆☆☆☆★"){
                            starResult1 += 1;
                        }else if(result[i].commentStar == "☆☆☆★★"){
                            starResult1 += 2;
                        }else if(result[i].commentStar == "☆☆★★★"){
                            starResult1 += 3;
                        }else if(result[i].commentStar == "☆★★★★"){
                            starResult1 += 4;
                        }else if(result[i].commentStar == "★★★★★"){
                            starResult1 += 5;
                        }else{
                            alert("별점을 입력해주세요");
                            break;
                        }
                        // output += "<td>"+moment(result[i].commentDate).format("YYYY-MM-DD HH:mm:ss")+"</td>";
                        console.log(starResult1%result[i].id);
                        starResult2 = starResult1%result[i].id;
                        }
                    output += "</table>";
                    document.getElementById("comment-list").innerHTML = output;
                    switch (starResult2){
                        case 1:
                            document.getElementById("starDd").innerHTML = "☆☆☆☆★";
                            break;
                        case 2:
                            document.getElementById("starDd").innerHTML = "☆☆☆★★";
                            break;
                        case 3:
                            document.getElementById("starDd").innerHTML = "☆☆★★★";
                            break;
                        case 4:
                            document.getElementById("starDd").innerHTML = "☆★★★★";
                            break;
                        case 5:
                            document.getElementById("starDd").innerHTML = "★★★★★";
                            break;
                        default:
                            break;
                    }


                }
            },error: function (){
                console.log("에러");
            }
        })
    }
</script>
</html>
