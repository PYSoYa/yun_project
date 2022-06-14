<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-10
  Time: 오후 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../../resources/css/my.css">

    <script src="../../../resources/js/jquery.js"></script>
    <script src="../../../resources/js/myPage.js"></script>
    <style>
        .member-container{
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
        .group-b{
            margin-left: 200px;
        }
        .passCheck{
            margin-left: 100px;
            margin-top: 50px;
        }
        #memberDelete{
            margin-left: 20px;
        }
    </style>
</head>
<body>
<jsp:include page="../header/header.jsp"></jsp:include>
<jsp:include page="../header/leftHeader.jsp"></jsp:include>

<div class="member-container">
    <div class="group-a">
    <dl>
        <dt>아이디</dt>
        <dd>${memberDTO.memberId}</dd>
    </dl>
    <dl>
        <dt>이름</dt>
        <dd>${memberDTO.memberName}</dd>
    </dl>
    <dl>
        <dt>나이</dt>
        <dd>${memberDTO.memberAge}</dd>
    </dl>
    <dl>
        <dt>이메일</dt>
        <dd>${memberDTO.memberEmail}</dd>
    </dl>
    <dl>
        <dt>전화번호</dt>
        <dd>${memberDTO.memberMobile}</dd>
    </dl>
    <dl>
        <dt>주소</dt>
        <dd>${memberDTO.memberAddress1}</dd>
        <dd>${memberDTO.memberAddress2}</dd>
        <dd>${memberDTO.memberAddress3}</dd>
    </dl>
        <dd><button id="modify" type="button" onclick="modify()">수정</button></dd>
        <dd><button id="memberDelete" type="button" onclick="memberDelete()">삭제</button></dd>
    </div>
    <div id="group-b" class="group-b" style="display: none">
    <form action="/member/update" method="post" name="update">
    <dl>
        <dt>아이디</dt>
        <dd>${memberDTO.memberId}</dd>
    </dl>

<dl>
    <dt>비밀번호</dt>
    <dd><input type="password"  name="memberPassword"></dd>
</dl>
<dl>
    <dt>이름</dt>
    <dd>${memberDTO.memberName}</dd>
</dl>
<dl>
    <dt>나이</dt>
    <dd>${memberDTO.memberAge}</dd>
</dl>
<dl>
    <dt>이메일</dt>
    <dd><input type="text" name="memberEmail"></dd>
</dl>
<dl>
    <dt>전화번호</dt>
    <dd>${memberDTO.memberMobile}</dd>
</dl>
<dl>
    <dt>주소</dt>
    <dd>${memberDTO.memberAddress1}</dd>
    <dd>${memberDTO.memberAddress2}</dd>
    <dd>${memberDTO.memberAddress3}</dd>
</dl>
    </form>
    <button type="button" id="btn" onclick="modifyBtn()">수정완료</button>
</div>
    </div>


<div id="pass" class="passCheck" style="display: none">
    <dl>
        <dt>비밀번호 확인</dt>
        <dd><input type="password" id="memberPassword" name="memberPassword"></dd>
        <dd><button type="button" onclick="passCheck()">수정</button></dd>
        <dd><button type="button" onclick="passCheck1()">삭제</button></dd>
    </dl>
</div>
</body>
<script>
    const memberDelete = () => {
        const passCheck = document.getElementById("pass");
        passCheck.style.display = 'block';
    }
    const modify = () => {
        const passCheck = document.getElementById("pass");
        passCheck.style.display = 'block';
    }
    const passCheck = () => {
        const pass = document.getElementById("memberPassword").value;
        const passCheck = document.getElementById("pass");
        const group = document.getElementById("group-b");
        const modify = document.getElementById("modify");
        const memberDelete = document.getElementById("memberDelete");
        const ps = ${sessionScope.loginMemberPassword};

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
    const passCheck1 = () => {
        const pass = document.getElementById("memberPassword").value;
        const ps = ${sessionScope.loginMemberPassword};
        if(pass == ps){
            alert("비밀번호가 일치합니다");
            location.href = "/member/delete?id=${sessionScope.loginId}";
        }
    }
    const modifyBtn = () => {
        const modify = document.getElementById("modify");

        document.update.submit();
        setTimeout(function(){
                modify.style.display = 'none';
            },200);
    }
</script>
</html>
