<%@page pageEncoding="UTF-8" %>

    <div>
        <div><i class="fa fa-users fa-2x margin30"> 회원가입</i></div>
        <hr>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active"><a href=""><button type="button" class="btn btn-success">이용약관</button></a></li>
                <li class="breadcrumb-item"><a href=""><button type="button" class="btn btn-success">실명확인</button></a></li>
                <li class="breadcrumb-item"><a href=""><button type="button" class="btn btn-light" disabled>정보입력</button></a></li>
                <li class="breadcrumb-item"><a href=""><button type="button" class="btn btn-light " disabled>가입완료</button></a></li>
            </ol>
        </nav>
        <div class="main">
            <div class="margin30">
                <h2>가입인증</h2>
                <small class="text-muted">회원으로 가입하는 방법에는 2가지 방법이 있습니다. 아래에서 원하는 방법을 선택해주세요<br>입력하신 정보는 가입완료 전까지 본 사이트에 저장되지 않습니다.</small>
            </div>
            <div class="card card-body bg-light margin1050">
                <h2>회원가입</h2>
                <form name='checkfrm'>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col-5">
                            <div class="form-group row">
                                <label for="name" class="col-4 col-form-label">이름</label>
                                <input type="text" id="name" class="form-control col-6">
                            </div>
                            <div class="form-group row">
                                <label for="byear" class="col-4 col-form-label">생년월일</label>
                                <select id="byear" class="form-control col-3">
                                    <option>년도</option>
                                    <option>2018</option>
                                    <option>2017</option>
                                </select>&nbsp;
                                <select id="bmonth" class="form-control col-2">
                                    <option>월</option>
                                    <option>12</option>
                                    <option>11</option>
                                </select>&nbsp;
                                <select id="bday" class="form-control col-2">
                                    <option>일</option>
                                    <option>12</option>
                                    <option>11</option>
                                </select>
                            </div>
                            <div class="form-group row">
                                <label class="col-4">성별</label>
                                <div class=" custom-control custom-radio">
                                    <input type="radio" id="male" name="gender" class="custom-control-input" value="m">
                                    <label for="male" class="custom-control-label">남자</label>
                                </div>
                                &nbsp;&nbsp;&nbsp;
                                <div class=" custom-control custom-radio">
                                    <input type="radio" id="female" name="gender" class="custom-control-input" value="ㄹ">
                                    <label for="female" class="custom-control-label">여자</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-5">
                            <ul>
                                <li>주민등록번호 입력 없이 전화번호로 회원가입이 가능합니다.</li>
                                <li>이름, 생년월일과 성별은 <span style="color: red">추후 변경할수 없습니다.</span></li>
                                <li><span style="color: red">휴대폰 가입인증을 하셔야</span> 공개 게시판 이용이 가능합니다.</li>
                            </ul>
                        </div>
                        <div class="col"></div>
                    </div><!--입력폼-->
                    <div class="row">
                        <div class="col-12 text-center">
                            <button type="button" id="checkbtn" name="checkbtn" class="btn btn-primary"><i class="fa fa-check"> 확인하기</i></button>
                            <button type="button" id="cancelbtn" name="cancelbtn" class="btn btn-danger"><i class="fa fa-remove"> 취소하기</i></button>
                        </div>
                    </div> <!--버튼-->
                </form>

            </div>
            <div class="card card-body bg-light mgnpdg15">
                <h2>실명확인 회원가입</h2>
                <form>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col-5">
                            <div class="form-group row margin30">
                                <label for="name2" class="col-4 col-form-label">이름</label>
                                <input type="text" id="name2" class="form-control col-6" disabled>
                            </div>
                            <div class="form-group row margin30">
                                <label for="jumin1" class="col-4 col-form-label">주민번호</label>
                                <input type="text" id="jumin1" class="form-control col-3" disabled>&nbsp;
                                <label class="col-form-label">&ndash;</label>&nbsp
                                <input type="text" id="jumin2" class="form-control col-3" disabled>
                            </div>
                            <div class="form-group row">
                                <label class="col-4"></label>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" id="usejm" class="custom-control-input">
                                    <label for="usejm" class="custom-control-label">주민등록번호 처리에 동의합니다.</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-5">
                            <ul>
                                <li>실명확인 회원가입시 공개 개시판 이용이 가능합니다.</li>
                                <li>타인의 주민등록번호를 임의로 사용하면<span style="color: red">'주민등록법'에 의해 3년 이하의 징역 또는 1천만원 이하의 벌금</span>이 부과될 수 있습니다</li>
                                <li>입력하신 주민등록번호는 <span style="color: red">별도 저장되지 않으며, 신용평가기관을 통한 실명확인용으로만</span> 이용됩니다.</li>
                                <li>개인정보보호법에 따라<span style="color: red"> 이용 동의</span>를 받습니다.</li>
                            </ul>
                        </div>
                        <div class="col"></div>
                    </div><!--입력폼-->
                    <div class="row">
                        <div class="col-12 text-center">
                            <button type="button" class="btn btn-primary" ><i class="fa fa-check"> 확인하기</i></button>
                            <button type="button" class="btn btn-danger"><i class="fa fa-remove"> 취소하기</i></button>
                        </div>
                    </div> <!--버튼-->
                </form>
            </div>
        </div>
    </div>





