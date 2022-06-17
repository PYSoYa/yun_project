<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-14
  Time: 오전 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <script src="../../../resources/js/jquery.js"></script>
    <link rel="stylesheet" href="../../../resources/css/bootstrap.min.css">
    <style>
        .board-container{
            margin-left: 100px;
            margin-top: 50px;
            display: flex;
        }
        .enterprise-container{
            margin-left: 100px;
            display: flex;
        }
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
        .group-a{
            margin-top: 50px;
        }
        .group-b{
            margin-left: 200px;
            margin-top: 50px;
        }
        .passCheck{
            margin-left: 100px;
            margin-top: 50px;
        }
        #enterpriseDelete{
            margin-left: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="../header/header.jsp"></jsp:include>
<jsp:include page="../header/leftHeader.jsp"></jsp:include>
<div class="enterprise-container">
    <div class="group-a">
        <dl>
            <dt>아이디</dt>
            <dd>${enterpriseDTO.enterpriseId}</dd>
        </dl>
        <dl>
            <dt>기업명</dt>
            <dd>${enterpriseDTO.enterpriseName}</dd>
        </dl>
        <dl>
            <dt>이메일</dt>
            <dd>${enterpriseDTO.enterpriseEmail}</dd>
        </dl>
        <dl>
            <dt>사업자번호</dt>
            <dd>${enterpriseDTO.enterpriseNumber}</dd>
        </dl>
        <dl>
            <dt>전화번호</dt>
            <dd>${enterpriseDTO.enterpriseMobile}</dd>
        </dl>
        <dl>
            <dt>주소</dt>
            <dd>${enterpriseDTO.enterpriseAddress1}</dd>
            <dd>${enterpriseDTO.enterpriseAddress2}</dd>
            <dd>${enterpriseDTO.enterpriseAddress3}</dd>
        </dl>
        <dd><button id="modify" type="button" onclick="modify()">수정</button></dd>
        <dd><button id="enterpriseDelete" type="button" onclick="enterpriseDelete()">삭제</button></dd>
    </div>
<div id="group-b" class="group-b" style="display: none">
    <form action="/enterprise/update?id=${sessionScope.enterpriseLoginId}" method="post" name="enterpriseUpdate">
        <dl>
            <dt>아이디</dt>
            <dd>${enterpriseDTO.enterpriseId}</dd>
        </dl>

        <dl>
            <dt>비밀번호</dt>
            <dd><input type="password"  name="enterprisePassword"></dd>
        </dl>
        <dl>
            <dt>기업병</dt>
            <dd>${enterpriseDTO.enterpriseName}</dd>
        </dl>
        <dl>
            <dt>이메일</dt>
            <dd><input type="text" name="enterpriseEmail"></dd>
        </dl>
        <dl>
            <dt>전화번호</dt>
            <dd>${enterpriseDTO.enterpriseMobile}</dd>
        </dl>
        <dl>
            <dt>주소</dt>
            <dd>${enterpriseDTO.enterpriseAddress1}</dd>
            <dd>${enterpriseDTO.enterpriseAddress2}</dd>
            <dd>${enterpriseDTO.enterpriseAddress3}</dd>
        </dl>
        <button type="button" id="btn" onclick="enterpriseModify()">수정완료</button>
    </form>
</div>
</div>
<div id="pass" class="passCheck" style="display: none">
    <dl>
        <dt>비밀번호 확인</dt>
        <dd><input type="password" id="enterprisePassword" name="enterprisePassword"></dd>
        <dd><button type="button" onclick="passCheck()">수정</button></dd>
        <dd><button type="button" onclick="passCheck1()">삭제</button></dd>
    </dl>
</div>
<%--    <button type="button" onclick="kakaoPay()" style="margin-left: 200px;">결제</button>--%>

<div class="board-container">
    <dl>
        <dt>등록중인 공고글</dt>
        <dd>
            <div class="board-container">
                <div class="row g-2">
                    <c:forEach var="boardIndex" items="${boardIndexDTOList}">
                        <button style="width: 50px;" onclick="boardDelete(${boardIndex.id})">삭제</button>
                        <div class="col-12">
                            <a class="a-tag" id="board" href="/board/detail?boardTitle=${boardIndex.indexTitle}">
                                <div class="p-3 border bg-light" style="color: #222222">
                                        ${boardIndex.indexName}<br>
                                        ${boardIndex.indexTitle}<br>
                                        ${boardIndex.indexArea2}
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
        </dd>
    </dl>
</div>
</body>
<script>
    const boardDelete = (id) => {
        const loginId = '${sessionScope.enterpriseLoginId}';
        location.href = "/board/delete?loginId=" + loginId + "&id="+ id;
    }
    const enterpriseModify = () => {
        const modify = document.getElementById("modify");

        document.enterpriseUpdate.submit();
        setTimeout(function(){
            modify.style.display = 'none';
        },200);
    }
    const enterpriseDelete = () => {
        const passCheck = document.getElementById("pass");
        passCheck.style.display = 'block';
    }
    const modify = () => {
        const passCheck = document.getElementById("pass");
        passCheck.style.display = 'block';
    }
    const passCheck = () => {
        const pass = document.getElementById("enterprisePassword").value;
        const passCheck = document.getElementById("pass");
        const group = document.getElementById("group-b");
        const modify = document.getElementById("modify");
        const memberDelete = document.getElementById("enterpriseDelete");
        const ps = '${enterpriseDTO.enterprisePassword}';

        if(ps == pass){
            alert("비밀번호가 일치합니다.");
            if(group.style.display == 'none'){
                group.style.display = 'block';
                modify.style.display = 'none';
                memberDelete.style.display = 'none';
                if(passCheck.style.display = 'block'){

                    passCheck.innerHTML = "";
                }
            }
        }else{
            alert("비밀번호가 일치하지 않습니다.");
        }
    }
    const kakaoPay = () =>{
        var IMP = window.IMP;
        IMP.init('imp91509469');
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '결제',
            amount: 800000,
            buyer_email: '${enterpriseDTO.enterpriseEmail}',
            buyer_name: '${enterpriseDTO.enterpriseName}',
            buyer_tel: '${enterpriseDTO.enterpriseMobile}',
            buyer_postcode : '${enterpriseDTO.enterpriseAddress1}',
            buyer_addr: '${enterpriseDTO.enterpriseAddress2}',
        }, function(rsp){
            if( rsp.success){
                alert("결제가 완료되었습니다.");
            }else{
                alert("결제를 실패하였습니다.");
            }
            // submit();
        });
    }

</script>
</html>
