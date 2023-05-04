package gwan.loginpage.mapper;

import gwan.loginpage.domain.LoginPageVO;

public interface LoginPageMapper {
	
	//로그인 조회
	public LoginPageVO loginCheck(LoginPageVO vo);
}
