<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-07
  Time: 오후 5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="../../../resources/js/jquery.js"></script>
    <style>
        .main{
            border:1px solid white;
            border-inline-style: hidden;
            height:330px;
            width: 400px;
            position: absolute;
            top: 40% !important;
            left: 50%;
            margin-top: -100px;
            margin-left: -200px;
        }
        .title-span{
            font-weight: 600;
            font-size: 30px;
            margin-bottom: 20px;
        }
        #button1 {
             font-family: 'Noto Sans KR', sans-serif;
             margin-left: 1px;
             height: 40px;
             width: 100%;
             background-color: #222222;
             display: inline-block;
             font-family: 'Noto Sans KR', sans-serif;
             border-color: #222222;
             border-radius: 4px;
             color: white;
             margin-bottom: 40px;
         }
        input[type='text'] {
            box-sizing: border-box;
            border: 1px solid #bad4ff;
            border-radius: 4px;
            width: 100%;
            height: 40px;
            margin-bottom: 20px !important;
        }
        #sample2_postcode{
            width: 280px;
        }
        #areaBtn{
            font-family: 'Noto Sans KR', sans-serif;
            margin-left: 1px;
            height: 40px;
            width: 100px;
            background-color: #222222;
            display: inline-block;
            font-family: 'Noto Sans KR', sans-serif;
            border-color: #222222;
            border-radius: 4px;
            color: white;
            margin-left: 12px;
        }
    </style>
</head>
<body>
<form action="/boardIndex/save" method="post">
    <div class="main">
        <div class="title-span">
        요약글 작성
        </div>
            <div class="boardStyle">
            <input type="text" id="indexName" name="indexName" value="${sessionScope.enterpriseName}" placeholder="기업명" readonly>
        </div>
        <div class="boardStyle">
            <input type="text" id="indexTitle" name="indexTitle" placeholder="제목">
        </div>
        <div class="boardStyle">
            <input type="text" id="indexMoney" name="indexMoney" placeholder="급여">
        </div>

    <input type="text" id="sample2_postcode" name="indexArea1" placeholder="우편번호">
    <input type="button" id="areaBtn" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
    <input type="text" id="sample2_address" name="indexArea2" placeholder="주소"><br>
    <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
        <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
    </div>
        <input id="button1" type="submit" value="상세정보 작성">
    </div>
</form>
</body>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    // if(extraAddr !== ''){
                    //     extraAddr = ' (' + extraAddr + ')';
                    // }
                    // // 조합된 참고항목을 해당 필드에 넣는다.
                    // document.getElementById("sample2_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample2_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.


                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>
</html>
