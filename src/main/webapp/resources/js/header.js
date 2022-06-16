const home = () => {
    location.href = "/";
}
const signup = () => {
    location.href = "/mainSave";
}
const logout = () => {
    location.href = "/member/logout";
}
const enterpriseLogout = () => {
    location.href = "/enterprise/logout";
}
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
const loginMember = () => {
    const test1 = document.getElementById("test1");
    const test2 = document.getElementById("test2");
    if(test2.style.display === 'block'){
        test2.style.display = 'none';
        test1.style.display = 'block';
    }else{
        test1.style.display = 'block';
    }
}

const loginEnterprise = () => {
    const test1 = document.getElementById("test1");
    const test2 = document.getElementById("test2");
    if(test1.style.display === 'block'){
        test1.style.display = 'none';
        test2.style.display = 'block';
    }else{
        test2.style.display = 'block';
    }
}
const login = () =>{
    var ww=450;
    var wh=400;

    var top=(screen.availHeight-wh)/2;
    var left=(screen.availWidth-ww)/2;

    window.open('/homeLogin','get','width='+ww+', height='+wh+', top='+top+', left='+left+',toolbar=no, menubar=no, scrollbars=no, resizable=no' );


}
const login1 = () => {
    document.enterpriseLogin.target = "/enterprise/login";
    document.enterpriseLogin.submit();

    setTimeout(function() {
        opener.location.href = "/";
        window.open('about:link','_self').close();

    }, 200);
}