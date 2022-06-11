<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-10
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            border-spacing: 0;
            border-collapse: collapse;
            width: 600px;
            text-align: center;
        }
        .table{
            border: 1px solid;
            width: 598px;
        }
        .table-1{
            margin-top: 20px;
            text-align: center;
        }
        .table-2{
            margin-top: 20px;
            text-align: center;
        }
        .table-3{
            margin-top: 20px;
            margin-right: 20px;
            margin-bottom: 40px;
            text-align: right;
        }
    </style>
</head>
<body>
<table border="1">
    <th colspan="3", rowspan="6" width="92px">
        <input type="text" style="width:50px; border: 0 hidden">
    </th>
    <th colspan="9">이력서</th>

    <tr>
        <td rowspan="2" width="20px">성명</td>
        <td>한글</td>
        <td colspan="2">${memberDTO.memberName}</td>
        <td>생 년 월 일</td>
        <td colspan="4">${memberDTO.memberSecurity}</td>
    </tr>
    <tr>
        <td>이니셜</td>
        <td colspan="2">sdfsdf</td>
        <td>주민등록번호</td>
        <td colspan="4">${memberDTO.memberSecurity}-${memberDTO.memberSecurity1}</td>
    </tr>
    <tr>
        <td colspan="2">주소</td>
        <td colspan="8">${memberDTO.memberAddress2}</td>
    </tr>
    <tr>
        <td colspan="2">E-mail</td>
        <td colspan="5">${memberDTO.memberEmail}</td>
        <td>전화번호</td>
        <td>${memberDTO.memberMobile}</td>
    </tr>
</table>
<table border="1">
    <tr>
        <td rowspan="4" width="20px;">학력</td>
        <td colspan="3">기간</td>
        <td colspan="5">학교명</td>
        <td colspan="3">전공분야</td>
    </tr>
    <tr>
        <td colspan="3">${carrerDTO.cs_period}</td>
        <td colspan="5">${carrerDTO.cs_name}</td>
        <td colspan="3">${carrerDTO.cs_major}</td>
    </tr>
    <tr>
        <td colspan="3">-</td>
        <td colspan="5">-</td>
        <td colspan="3">-</td>
    </tr>
    <tr>
        <td colspan="3">-</td>
        <td colspan="5">-</td>
        <td colspan="3">-</td>
    </tr>

    <tr>
        <div class="table-header">
            <td rowspan="4">경 력</td>
            <td colspan="3">기 간</td>
            <td colspan="4">근 무 처</td>
            <td>직 위</td>
            <td colspan="3">업 무 내 용</td>
        </div>
    </tr>
    <tr>
        <td colspan="3">${carrerDTO.cb_period}</td>
        <td colspan="4">${carrerDTO.cb_name}</td>
        <td>${carrerDTO.cb_job}</td>
        <td colspan="3">${carrerDTO.cb_work}</td>
    </tr>
    <tr>
        <td colspan="3">-</td>
        <td colspan="4">-</td>
        <td>-</td>
        <td colspan="3">-</td>
    </tr>
    <tr>
        <td colspan="3">-</td>
        <td colspan="4">-</td>
        <td>-</td>
        <td colspan="3">-</td>
    </tr>

    <tr>
        <div class="table-header">
            <td rowspan="2">병 역</td>
            <td colspan="3">복 무 기 간</td>
            <td colspan="2">군 번</td>
            <td colspan="2">계 급</td>
            <td colspan="">병 과</td>
            <td colspan="3">근 무 처</td>
        </div>
    </tr>
    <tr>
        <td colspan="3">${carrerDTO.ca_period}</td>
        <td colspan="2">${carrerDTO.ca_number}</td>
        <td colspan="2">${carrerDTO.ca_rank}</td>
        <td colspan="">${carrerDTO.ca_major}</td>
        <td colspan="3">${carrerDTO.ca_name}</td>
    </tr>
</table>
<table border="1">
    <tr>
        <div class="table-header">
            <td rowspan="6" width="20px">자격 및 면허</td>
            <td colspan="" width="164px">취득 년 월 일</td>
            <td colspan="2" width="36.5px">자 격</td>
            <td colspan="2" width="36.5px">면 허 명</td>
            <td colspan="3" width="51.5px">시 행 처</td>
        </div>
    </tr>
    <tr>
        <td colspan="">${carrerDTO.cc_period}</td>
        <td colspan="2">${carrerDTO.cc_rank}</td>
        <td colspan="2">${carrerDTO.cc_name}</td>
        <td colspan="3">${carrerDTO.cc_agency}</td>
    </tr>
    <tr>
        <td colspan="">-</td>
        <td colspan="2">-</td>
        <td colspan="2">-</td>
        <td colspan="3">-</td>
    </tr>
    <tr>
        <td colspan="">-</td>
        <td colspan="2">-</td>
        <td colspan="2">-</td>
        <td colspan="3">-</td>
    </tr>
    <tr>
        <td colspan="">-</td>
        <td colspan="2">-</td>
        <td colspan="2">-</td>
        <td colspan="3">-</td>
    </tr>
    <tr>
        <td colspan="">-</td>
        <td colspan="2">-</td>
        <td colspan="2">-</td>
        <td colspan="3">-</td>
    </tr>
</table>
<div class="table">
    <div class="table-1">
        위에 기재한 사항은 사실과 틀림이 없습니다.
    </div>
    <div class="table-2">
        <fmt:formatDate pattern="yyyy.MM.dd"
                        value="${carrerDTO.carrerDate}"></fmt:formatDate>
    </div>
    <div class="table-3">
        성   명 : ${memberDTO.memberName}(인)
    </div>
</div>
</body>
</html>
