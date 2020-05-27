<%@ page pageEncoding="UTF-8" %>

    <div id="main">
        <div class="margin30">
            <i class="fa fa-users fa-2x">회원가입</i>
            <hr>
        </div> <!--타이틀-->


        <div class="margin30">
            <h2>회원정보입력</h2>
            <small class="text-muted">
                회원가입을 위해서 아래 사이트 이용약관 &middot;
                개인정보 수집 및 이용에 대한 안내를 읽고 동의해 주세요.
            </small>
            <hr>
        </div>
        <!--중간타이틀-->


        <div class="card-body bg-light margin15">
            <form name="joinfrm" id="joinfrm" method="post">
                <h3>일반회원</h3>

                <div class="row margin30">
                    <div class="col">
                    <div class="col-11">
                        <div class="form-group row">
                            <label for="name"
                                   class="col-2 col-form-label">이름</label>
                            <input type="text" class="form-control col-2  border-info"
                                   name="name" id="name" value="${param.name}">
                            <%-- id = 스타일시트 name = jsp로 전송 하기 위해 사용 --%>
                        </div><!-- 이름 -->

                    <div class="form-group row">
                        <label for="jumin1"
                               class="col-2 col-form-label">주민등록번호</label>
                        <input type="text" class="form-control col-2  border-warning"
                               name="jumin1" id="jumin1"
                               value="123456" disabled>
                        <label class="col-form-label">&nbsp;&ndash;&nbsp;</label>
                        <input type="text" class="form-control col-2 border-info"
                               name="jumin2" id="jumin2"
                               value="1234567" disabled>
                    </div><!-- 주민번호 -->

                    <div class="form-group row">
                        <label for="uid"
                                  class="col-2 col-form-label">아이디</label>
                        <input type="text" class="form-control col-2  border-info"
                                   name="uid" id="uid">
                        <span class="col-form-label col-7 text-danger">
                                6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용 할 수 있습니다.</span>
                    </div><!-- 아이디 -->
                    <div class="form-group row">
                        <label for="pwd"
                               class="col-2 col-form-label">비밀번호</label>
                        <input type="PASSWORD" class="form-control col-2  text-danger"
                               name="pwd" id="pwd" maxlength="16" >
                        <span class="col-form-label col-7 text-danger">
                            6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용 할 수 있습니다.</span>

                    </div><!-- 비밀번호 -->

                    <div class="form-group row">
                        <label for="repwd"
                               class="col-2 col-form-label">비밀번호 확인</label>
                        <input type="PASSWORD" class="form-control col-2  border-info"
                               name="repwd" id="repwd" maxlength="16" >
                        <span class="col-form-label col-7 text-danger">
                            6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용 할 수 있습니다.</span>
                    </div><!-- 비밀번호 확인 -->
                    <div class="form-group row">
                        <label for="zip1"
                               class="col-2 col-form-label">우편번호</label>
                        <input type="text" class="form-control col-1  border-info"
                               name="zip1" id="zip1" maxlength="3" readonly>
                        <label class="col-form-label">&nbsp;&ndash;&nbsp;</label>
                        <input type="text" class="form-control col-1  border-info"
                               name="zip2" id="zip2" maxlength="3" readonly>
                        <span class="col-7">
                            <button class="btn btn-dark" type="button"
                                    data-toggle="modal"  data-target="#zipcode">
                                <i class="fa fa-question-circle">우편번호 찾기</i>
                            </button>
                        </span>
                    </div><!-- 우편번호 -->
                    <div class="form-group row">

                        <label for="addr1"
                               class="col-2 col-form-label">주소</label>
                        <input type="text" class="form-control col-3  border-info"
                               name="addr1" id="addr1" readonly>
                        &nbsp;
                        <input type="text" class="form-control col-3  border-info"
                               name="addr2" id="addr2">
                    </div><!-- 주소 -->
                    <div class="form-group row">
                        <div class="input-group">
                            <label for="email1"
                                   class="col-2 col-form-label">전자우편 주소</label>
                            <input type="text" class="form-control col-3  border-info"
                                   name="email1" id="email1">
                            &nbsp;@&nbsp;
                            <input type="text" class="form-control col-3  border-info"
                                   name="email2" id="email2">
                        </div>
                    </div><!-- 전자우편 주소 -->
                    <div class="form-group row">
                        <label for="hp1"
                               class="col-2 col-form-label">개인연락처</label>
                        <select id="hp1" name="hp1" class="form-control col-2">
                            <option>국번</option>
                            <option>010</option>
                            <option>011</option>
                            <option>019</option>
                        </select>
                        <label for="hp2" type="text"
                               class="col-form-label border-info">&nbsp;&ndash;&nbsp;</label>
                        <input type="text" class="form-control col-2  border-info"
                               name="hp2" id="hp2">
                        <label for="hp3" type="text"
                               class="col-form-label border-info">&nbsp;&ndash;&nbsp;</label>
                        <input type="text" class="form-control col-2  border-info"
                               name="hp3" id="hp3">
                    </div><!-- 개인연락처 -->
                    <div class="form-group row">
                        <label class="col-2 col-form-label"
                               for="captcha">자동가입방지</label>
                        <img src="/resources/img/google_recaptcha.gif"
                            width="50%" height="30%"
                            style="margin-left: -5px; margin-bottom: 5px;">
                        <input type="text" class="form-control col-4 border-info"
                                name="captcha" id="captcha"
                                style="margin-left: 134px;">&nbsp;
                        <button type="button" class="btn btn-dark"
                        style="margin-bottom: 20px;">
                            <i class="fa fa-question"></i>
                            다른 captcha 보기
                        </button>
                    </div><!-- 자동가입방지 -->
                    <div class="form-group row justify-content-center">

                       <button type="button" class="btn btn-primary"
                               id="joinokbtn" name="joinokbtn" >
                           <i class="fa fa-check"></i>입력하기
                       </button>
                       <button type="button" class="btn btn-danger"
                                id="joinnobtn" name="joinnobtn">
                           <i class="fa fa-check"></i>취소하기
                       </button>

                    </div><!-- 버튼들 -->
                </div>


                 </div>
                 </div>
            </form>
        </div>
        <%@include file="../layout/footer.jsp"%>




        <!-- 우편번호 찾기 모달 시작 -->
        <div id="zipcode" name="zipcode" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3 class="modal-title">우편번호 찾기</h3>
                        <button type="button" data-dismiss="modal"
                            class="btn btn-light">&times</button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-3">
                                    <label class="text-danger" for="dong"
                                    style="margin-top: -7px;">
                                        검색하실 주소의<br> 동 이름을 입력하세요
                                    </label>
                                </div>
                                <div class="col-4">
                                    <input type="text" id="dong"
                                    name="dong" class="form-control border-danger">
                                </div>
                                <div class="col-3">
                                    <button type="button"
                                            class="btn btn-primary">
                                        <i class="fa fa-search">검색하기</i>
                                    </button>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-11">
                                    <hr class="col-10" style="margin-left: -18px;">
                                    <p>지역의 읍/면/동의 이름을 공백없이 입력하신 후,
                                    [검색하기] 버특을 클릭하세요.</p>
                                    <select id="addrlist" name="addrlist" size="10"
                                            class="form-control col-10">
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                        <option>123-456 서울시 종로구 평창동</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" id="zipbtn" name="zipbtn"
                                class="btn btn-danger">선택하고 닫기</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 우편번호 찾기 모달 끝 -->
    </div>

