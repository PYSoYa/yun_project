<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-09
  Time: 오후 5:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        .c-c{
            display: flex;
        }
        .c-1{
            width: 100%;
            border: 0 hidden;
        }
        .c-1-a{
            width: 30px;
            border: 0 hidden;
        }
        .c-2{
            width: 100%;
        }
        .c-3{
            width: 100%;
        }
        .cb-1{
            width: 100%;
        }
        .cb-2{
            width: 80px;
        }
        .ca-1{
            width: 30px;
        }
        .cc-1{
            width: 123.5px;
        }
        input{
            border: none;
            outline: none;
            height: 21.6px;
        }
    </style>
</head>
<body>
<table border="1">
    <th colspan="3" rowspan="6" width="92px">
        사진
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
<form action="/member/carrer" method="post" name="memberCarrer">
<table border="1">
        <input type="hidden" id="id" name="id" value="${sessionScope.loginId}">
    <tr>
        <td rowspan="4" width="20px;">학력</td>
        <td colspan="3">기간</td>
        <td colspan="5">학교명</td>
        <td colspan="3">전공분야</td>
    </tr>
    <tr>
        <td colspan="3">
            <div class="c-c">
            <div class="c-1">
                <input type="text" class="c-1" id="cs_period" name="cs_period"
                       placeholder="yyyy.mm.dd ~ yyyy.mm.dd">
            </div>
            </div>
        </td>
        <td colspan="5">
            <div class="c-2">
                <input type="text" class="c-2" id="cs_name" name="cs_name" >
            </div>
        </td>
        <td colspan="3">
            <div class="c-3">
                <input type="text" class="c-3" id="cs_major" name="cs_major">
            </div>
        </td>
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
        <td colspan="3">
            <input type="text" class="c-1" id="cb_period" name="cb_period"
                   placeholder="yyyy.mm.dd ~ yyyy.mm.dd">
        </td>
        <td colspan="4">
            <input type="text" class="cb-1" id="cb_name" name="cb_name">
        </td>
        <td>
            <input type="text" class="cb-2" id="cb_job" name="cb_job">
        </td>
        <td colspan="3">
            <input type="text" class="c-3" id="cb_work" name="cb_work">
        </td>
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
        <td colspan="3">
            <input type="text" class="c-1" id="ca_period" name="ca_period"
                   placeholder="yyyy.mm.dd ~ yyyy.mm.dd">
        </td>
        <td colspan="2">
            <input type="text" class="cb-2" id="ca_number" name="ca_number">
        </td>
        <td colspan="2">
            <input type="text" class="cb-2" id="ca_rank" name="ca_rank">
        </td>
        <td colspan="">
            <input type="text" class="cb-2" id="ca_major" name="ca_major">
        </td>
        <td colspan="3">
            <input type="text" class="c-3" id="ca_name" name="ca_name">
        </td>
    </tr>
</table>
<table border="1">
    <tr>
        <div class="table-header">
        <td rowspan="6" width="20px">자격 및 면허</td>
        <td colspan="" width="158.5px">취득 년월일</td>
        <td colspan="2" width="36.5px">자 격</td>
        <td colspan="2" width="36.5px">면 허 명</td>
        <td colspan="3" width="51.5px">시 행 처</td>
        </div>
    </tr>
    <tr>
        <td colspan="">
            <input type="text" class="c-1" id="cc_period" name="cc_period"
                   placeholder="yyyy.mm.dd ~ yyyy.mm.dd">
        </td>
        <td colspan="2">
            <input type="text" class="cc-1" id="cc_rank" name="cc_rank">
        </td>
        <td colspan="2">
            <input type="text" class="cc-1" id="cc_name" name="cc_name">
        </td>
        <td colspan="3">
            <input type="text" class="c-3" id="cc_agency" name="cc_agency">
        </td>
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
        현재날짜 자동입력
    </div>
    <div class="table-3">
        성   명 : ${memberDTO.memberName}(인)
    </div>
</div>
</form>
<a onclick="saveCarrer()">저장</a>
</body>
<script>
    const saveCarrer = () => {
        document.memberCarrer.submit();
    }
</script>
</html>
