<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-09
  Time: 오전 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
            width: 900px;
            margin-left: 350px;
            border-left: 1px solid #ededed;
            border-right: 1px solid #ededed;
            padding: 0 0 0 0;
        }
        .group-title{
            margin-bottom: 200px;
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
            font-size: 24px;
        }
        .main-span{
            font-size: 40px;
            font-weight: 700;
        }
    </style>
</head>
<body>
<jsp:include page="../header/header.jsp"></jsp:include>
    <div class="container-a">
        <div class="group-title" style="margin-left: 32px;">
                <span class="main-span">${boardDTO.boardTitle}</span>
            <div class="title-span">
            <span>${boardDTO.boardMoney}</span>
            <span>${boardDTO.boardWorkperiod}</span>
            <span>${boardDTO.boardWorkDays}</span>
            <span>${boardDTO.boardWorktime}</span>
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
</body>
</html>
