<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-14
  Time: 오전 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="https://service.iamport.kr/js/jamport.payment-1.1.5.js"></script>
</head>
<body>
    <button type="button" onclick="rsp()">결제</button>
</body>
<script>
    const rsp = () =>{
        var IMP = window.IMP;
        IMP.init('imp91509469');

        IMP.request_pay({
            pg : 'kakaopay',
            pay_method: 'card',
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: '결제',
            amount: 1,
            buyer_email: '${enterpriseDTO.enterpriseEmail}',
            buyer_name: '${enterpriseDTO.enterpriseName}',
            buyer_tel: ${enterpriseDTO.enterpriseMobile},
            buyer_addr: ${enterpriseDTO.enterpriseAddress2},
            m_redirect_url: 'redirect:/'
        }, function(rsp){
            if(rsp.success){
                var msg = '결제가 완료되었습니다.';
                location.href = '/';
            }else{
                var msg = '결제에 실패하였습니다.';
                rsp.error_msg;
            }
            // submit();
        });
    }

</script>
</html>
