package boot.app.com.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class user_dao {

	@Autowired
	private SqlSession sqlSession;
	
	public int insert_user(Map<String, Object> map) {
		
		return sqlSession.insert("boot.app.insert_user", map);	
	}
	
	public int login_te(Map<String, Object> map) {
		
		return sqlSession.selectOne("boot.app.login_te", map);
	}
	public int user_info(Map<String, Object> map) {
		
		return sqlSession.selectOne("boot.app.user_info", map);
	}

	public String name(Map<String, Object> map) {
		
		return sqlSession.selectOne("boot.app.name", map);
	}
	
}
