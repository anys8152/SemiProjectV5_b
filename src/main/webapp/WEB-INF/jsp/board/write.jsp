<%@ page pageEncoding="UTF-8" %>

    <!-- 메인영역 시작 -->
    <div id="main">
        <div class="row" style="margin-bottom: 10px;">
            <div class="col-4">
                <h1 style="font-weight: bold">
                    <i class="fa fa-comments"></i> 자유 게시판</h1>
            </div>
        </div>
        <hr style="margin-bottom: 40px;">
    <!-- 타이틀 -->

    <div class="row" style="margin-bottom: 20px;">
        <div class="col-6">
            <h4><i class="fa fa-plus-circle"></i>
                새글쓰기</h4>
            </button>
        </div>
        <div class="col-6 text-right" name="lstbd" id="lstbd">
            <button type="button" class="btn btn-light" style="font-size: 18px;" >
                <i class="fa fa-list"></i>
                목록으로
            </button>
        </div>
    </div><!-- 버튼 -->

    <div class="row margin15">
        <form class="card card-body bg-light" id="bdfrm"
            name="bdfrm" method="post">
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">제목</label>
                <input type="text" id="title" name="title" class="form-control col-8">
            </div><!-- 제목 -->
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">작성자</label>
                <input type="text" id="userid" name="userid"
                       class="form-control col-9" readonly
                        value="gjwjfgiqikk!~!">
            </div><!-- 작성자 -->
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">제목</label>
                <textarea id="contents" name="contents" rows="15"
                          class="form-control col-9"></textarea>
            </div><!-- 본문내용 -->
            <div class="form-group row">
                <label class="col-form-label col-2 text-right">자동가입방지</label>
                <img src="/resources/img/google_recaptcha.gif" width="50%" height="50%"
                     style="">
                <input type="text" id="captcha" name="captcha"
                       style="margin-left: 195px;"
                       class="form-control col-5">
            </div><!-- 자동가입방지 -->
            <div class="row justify-content-center"
                style="margin-top: 85px;">
                <hr style="width: 90%; color:gray; margin: 35px 0;" >
                <button type="button" name="bdregbtn"
                        id="bdregbtn" class="btn btn-primary">
                    <i class="fa fa-check"></i>입력하기
                </button>&nbsp;
                <button type="button" name="bdnobtn"
                        id="bdnobtn" class="btn btn-danger">
                    <i class="fa fa-remove"></i>취소하기
                </button>
            </div><!-- 버튼들 -->

        </form>
    </div><!-- 새글쓰기 폼 -->

</div>
<!-- 메인영역 끝 -->

