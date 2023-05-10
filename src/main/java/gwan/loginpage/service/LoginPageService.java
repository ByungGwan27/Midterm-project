package gwan.loginpage.service;

import java.util.List;

import gwan.loginpage.domain.LoginPageVO;

public interface LoginPageService {
	
	// 로그인 조회
	public LoginPageVO loginCheck(LoginPageVO vo);
	
	// 회원가입 화면
	//회원가입
	public boolean createUserCreate(LoginPageVO vo);
	//닉네임 확인
	public List<LoginPageVO> readNickname();
	//id 확인
	public List<LoginPageVO> readId();
	
	// pw찾기
	//email확인
	public List<LoginPageVO> readEmail();
	//email변경
	public boolean updatePw(String memberPw, String memberEmail);
}
