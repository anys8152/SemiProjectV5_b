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
                <small class="text-muted">안전한 회원 가입을 위해 휴대폰 인증을 진행해 주세요</small>
                <hr>
            </div>
            <div class="alert alert-danger margin1050" role="alert">
                <ul style="margin-bottom: -3px;">
                    <li class="list-inline" style="margin-left: -20px;"><span class="badge badge-danger">중요한내용!</span></li>
                    <li>극소수 익명 사용자의 대량가입으로 인한 피해를 방지 하기 위해여 가입인증을 시행하고 있습니다.</li>
                    <li>통신사의 사정으로 휴대폰 인증을 위한 메시지가 지연 발송될수도 있습니다.</li>
                </ul>
            </div>
            <div class="card card-body bg-light margin1050">
                <h3><span class="badge badge-pill badge-danger">1</span>휴대폰 정보</h3>
                <form>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col-5">
                            <div class="form-group row text-right margin20">
                                <label for="hp1" class="col-4 col-form-label">휴대폰 번호</label>
                                <select id="hp1" class="col-3 form-control">
                                    <option>국번</option>
                                    <option>010</option>
                                    <option>011</option>
                                    <option>019</option>
                                </select>
                                <label class="form-check-label">&nbsp;&ndash;&nbsp;</label>
                                <input type="text" id="hp2" class="form-control col-2">
                                <label class="form-check-label">&nbsp;&ndash;&nbsp;</label>
                                <input type="text" id="hp3" class="form-control col-2">
                            </div>
                        </div>
                        <div class="col-5">
                            <ul>
                                <li>메세지 수신 가능한 휴대폰으로 인증번호를 받을 수 있습니다.</li>
                                <li>휴대폰번호 입력 후 '인증번호 요청하기' 버튼을 눌러 주세요</li>
                            </ul>
                        </div>
                        <div class="col"></div>
                    </div><!--입력폼-->
                    <div class="row">
                        <div class="col-12 text-center">
                            <button type="button" id="reqbtn" class="btn btn-warning"><i class="fa fa-check" style="color: white"> 인증번호 요청하기</i></button>

                        </div>
                    </div> <!--버튼-->
                    <input type="hidden" id="name" value="${param.name}">
                </form>

            </div>
            <div class="card card-body bg-light mgnpdg15">
                <h3><span class="badge badge-pill badge-danger">2</span>휴대폰 가입인증</h3>
                <form>
                    <div class="row">
                        <div class="col"></div>
                        <div class="col-5">
                            <div class="form-group row margin20">
                                <label for="vcode" class="col-4 col-form-label">인증번호 입력</label>
                                <input type="text" id="vcode" class="form-control col-4" disabled>
                            </div>

                        </div>
                        <div class="col-5">
                            <ul>
                                <li>휴대폰으로 반은 인증번호 입력 후 확인을 눌러주세요</li>
                                <li>안중번호가 도착하지 않는다면 재인증을 시도해 주세요</li>
                                <li>재인증 실패시 통신사에 문의하시기 바랍니다.</li>
                                <li>통신사 문의 전 스팸문자함, 메세지함 용량 초과 여부, 차단설정을 확인해주십시오</li>
                            </ul>
                        </div>
                        <div class="col"></div>
                    </div><!--입력폼-->
                    <div class="row">
                        <div class="col-12 text-center">
                            <button type="button" class="btn btn-primary"><i class="fa fa-check"> 확인하기</i></button>
                            <button type="button" class="btn btn-danger"><i class="fa fa-remove"> 취소하기</i></button>
                        </div>
                    </div> <!--버튼-->
                </form>
            </div>
        </div>
    </div>



