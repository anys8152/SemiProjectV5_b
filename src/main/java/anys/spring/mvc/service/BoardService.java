package anys.spring.mvc.service;



import anys.spring.mvc.dao.BoardDAO;
import anys.spring.mvc.vo.BoardVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

// 액션태그에 사용할 자바빈즈 클래스
@Service("bsrv")
public class BoardService {

    private BoardDAO bdao;

    @Autowired
    public BoardService(BoardDAO bdao) {
        this.bdao = bdao;
    }


    public String newBoard(BoardVO bd){
        String result = "데이터입력 실패!";

        if(bdao.insertBoard(bd))
            result = "데이터입력 성공";

        System.out.println(result);  // result 변수에 있는 값을 WAS의 콘솔에 로그형태로 출력함.

        return result;
    }


    // 사원정보 리스트 출력
    public ArrayList<BoardVO> showBoard() {
        return bdao.selectBoard();
    }

    public BoardVO showOneBoard(String bno) {
        return bdao.selectOneBoard(bno);
    }

}