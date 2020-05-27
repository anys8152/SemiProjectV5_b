package anys.spring.mvc.dao;

import anys.spring.mvc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Types;
import java.util.ArrayList;

// 액션태그에 사용할 자바빈즈 클래스

@Repository("mdao")
public class MemberDAO {


    // MemberDAO에서 사용할 dbcp2 객체를 DI 받음
    // 스프링에 의해 DI 받음
    private JdbcTemplate jdbcTemplate = null;

    @Autowired
    public MemberDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // 회원 데이터를 member 테이블에 저장
    public boolean insertMember(MemberVO m) {
        // 실행할 sql문 정의
        String sql = "INSERT into member (name,userid,passwd,jumin,zipcode,addr1,addr2,email,mobile) \n" +
                "values (?,?,?,?,?, ?,?,?,?);\n";

        // sql문 실행시 필요한 매개변수 정의
        Object[] params = new Object[]{
                m.getName(), m.getUserid(), m.getPasswd(),
                m.getJumin(), m.getZipcode(), m.getAddr1(),
                m.getAddr2(), m.getEmail(), m.getMobile()
        };


        // 매개변수들의 데이터형 정의
        int[] types = new int[]{
                Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
                Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
                Types.VARCHAR, Types.VARCHAR, Types.VARCHAR
        };

        // 실행
        boolean isInset = false;
        if(jdbcTemplate.update(sql, params, types) > 0)
            isInset = true;

        return isInset;

    }

    // 사원 정보 중 일부만 골라서 리스트로 출력

    public ArrayList<MemberVO> selectMember() {

        return null;
    }

    public MemberVO selectOneMember() {

        return null;
    }
}