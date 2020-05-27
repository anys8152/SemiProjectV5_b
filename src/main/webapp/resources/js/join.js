// agree
$('#okagreebtn').on('click',function () {
    if( !$('#agree1').is(':checked'))
        alert('이용약관에 동의하세요');
    else if ( !$('#agree2').is(':checked'))
        alert('개인정보 활용에 동의하세요');
    else
        location.href='/join/checkme.do';
}); //모두 동의함

$('#noagreebtn').on('click',function () {
    location.href='/index.do';
}); //모두 동의함

// checkme
$('#checkbtn').on('click',function () {
    if($('#name').val()=='')
        alert('이름을 입력하세요');
    else if ($('#byear').val() =="년도" ||
        $('#bmonth').val() =="월" ||
        $('#bday').val()=="일")
        alert('생년을 입력하세요');
    else if(!$('input[name="gender"]').is(':checked'))
        alert('성별을 입력하세요');
    else
        location.href='/join/verifyme.do?name='+ $('#name').val();

});

$('#cancelbtn').on('click',function () {
    location.href = '/index.do';
});

// verifyme
$('#reqbtn').on('click',function () {
    if($('#hp1').val() == '국번' ||
        $('#hp2').val()=='' ||
        $('#hp3').val()=='')
        alert('번호를 입력하세요');
    else
        location.href='/join/joinme.do?name='+$('#name').val();
});


//  joinme
$('#joinokbtn').on('click',function () {
    if($('#name').val() == ""){
        alert('이름을 입력하세요!');
        $('#name').focus();
    } else if($('#jumin1').val() =='' ||
        $('#jumin1').val() =='' ){
        alert('주민번호를 입력하세요!!');
        $('#jumin1').focus();
        $('#jumin2').focus();}

    else if($('#pwd').val() ==''){
        alert('비번을 입력하세요!!');
        $('#pwd').focus();}
    else if($('#repwd').val() ==''){
        alert('비번확인 입력하세요!!');
        $('#repwd').focus();}
    // else if($('#zip1').val() ==''){
    //     alert('지번를 입력하세요!!');
    //     $('#zip1').focus();}
    // else if($('#zip2').val() ==''){
    //     alert('지번를 입력하세요!!');
    //     $('#zip2').focus();}
    // else if($('#addr1').val() ==''){
    //     alert('주소를 입력하세요!!');
    //     $('#addr1').focus();}
    // else if($('#addr2').val() ==''){
    //     alert('주소를 입력하세요!!');
    //     $('#addr2').focus();}
    else if($('#email1').val() ==''){
        alert('이메일를 입력하세요!!');
        $('#email1').focus();}
    else if($('#emil2').val() ==''){
        alert('이메일를 입력하세요!!');
        $('#email2').focus();}
    else if($('#hp1').val() ==''){
        alert('번호를 입력하세요!!');
        $('#hp1').focus();}
    else if($('#hp2').val() ==''){
        alert('번호를 입력하세요!!');
        $('#hp2').focus();}
    else if($('#hp3').val() ==''){
        alert('번호를 입력하세요!!');
        $('#hp3').focus();}
    else {
        $('#joinfrm').submit();
    }


}); // 회원가입 완료

$('#joinnobtn').on('click',function () {
    location.href='/index.do';
});   // 회원가입 취소

// joinok
$('#go2index').on('click',function () {
    location.href='/index.do';
}); // 메인으로

