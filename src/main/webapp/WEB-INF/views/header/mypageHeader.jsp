<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-10
  Time: 오후 3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="main-header">
        <div class="carrer">
            <a onclick="myPageCarrer()">이력서</a>
        </div>
    </div>
</body>
<script>
    const myPageCarrer = () => {
        location.href = "/member/findById?id=${sessionScope.loginId}";
    }
</script>
</html>
