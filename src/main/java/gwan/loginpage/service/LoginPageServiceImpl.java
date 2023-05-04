package gwan.loginpage.service;


import org.apache.ibatis.session.SqlSession;

import gwan.loginpage.domain.LoginPageVO;
import gwan.loginpage.mapper.LoginPageMapper;
import main.common.control.DataSource;

public class LoginPageServiceImpl implements LoginPageService {
	
	SqlSession session = DataSource.getInstance().openSession(true);
	LoginPageMapper mapper = session.getMapper(LoginPageMapper.class);
	
	// 로그인 조회
	@Override
	public LoginPageVO loginCheck(LoginPageVO vo) {
		return mapper.loginCheck(vo);
	}

}
