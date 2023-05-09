package gwan.loginpage.service;

import gwan.loginpage.domain.LoginPageVO;

public interface LoginPageService {
	
	//로그인 조회
	public LoginPageVO loginCheck(LoginPageVO vo);
	//회원가입
	public boolean createUserCreate(LoginPageVO vo);
}
