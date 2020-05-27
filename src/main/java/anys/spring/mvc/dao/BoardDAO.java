package anys.spring.mvc.dao;

import anys.spring.mvc.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

// 액션태그에 사용할 자바빈즈 클래스

@Repository("bdao")
public class BoardDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public BoardDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // 게시판 데이터랄 board 테이블에 저장
    public boolean insertBoard(BoardVO b) {

        // sql 정의
        String sql = "INSERT into Board (title,userid,contents) values (?,?,?);";

        // 매개변수 정의

        Object[] params = new Object[]{
                b.getTitle(), b.getUserid(), b.getContents()
        };
        // 매개변수 타입 정의 - 생략


        // 실행
        boolean isInsert = false;
        if (jdbcTemplate.update(sql, params) > 0 )
            isInsert = true;

        return isInsert;
    }

    // 사원 정보 중 일부만 골라서 리스트로 출력
    public ArrayList<BoardVO> selectBoard() {

        return null;

    }


    // 글번호로 선택한 게시물에 대해 모든 컬럼을 조회해서
    // BoardVO 객체에 저장하고 반환함
    public BoardVO selectOneBoard(String bno) {

        return null;
    }
}