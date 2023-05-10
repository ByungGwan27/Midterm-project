package gwan.loginpage.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gwan.loginpage.domain.LoginPageVO;
import gwan.loginpage.mapper.LoginPageMapper;
import main.common.control.DataSource;

public class LoginPageServiceImpl implements LoginPageService {
	
	SqlSession session = DataSource.getInstance().openSession(true);
	LoginPageMapper mapper = session.getMapper(LoginPageMapper.class);
	
	@Override
	public LoginPageVO loginCheck(LoginPageVO vo) {
		return mapper.loginCheck(vo);
	}

	@Override
	public boolean createUserCreate(LoginPageVO vo) {
		return mapper.createUserCreate(vo) == 1;
	}

	@Override
	public List<LoginPageVO> readNickname() {
		return mapper.readNickname();
	}

	@Override
	public List<LoginPageVO> readId() {
		return mapper.readId();
	}

	@Override
	public List<LoginPageVO> readEmail() {
		return mapper.readEmail();
	}

	@Override
	public boolean updatePw(String memberPw, String memberEmail) {
		return mapper.updatePw(memberPw, memberEmail) == 1;
	}

}
