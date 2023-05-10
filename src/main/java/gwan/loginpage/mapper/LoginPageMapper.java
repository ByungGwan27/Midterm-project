package gwan.loginpage.mapper;

import java.util.List;

import gwan.loginpage.domain.LoginPageVO;

public interface LoginPageMapper {
	
	// 로그인 조회
	public LoginPageVO loginCheck(LoginPageVO vo);
	
	// 회원가입 화면
	// 회원가입
	public int createUserCreate(LoginPageVO vo);
	// 닉네임 확인
	public List<LoginPageVO> readNickname();
	// id 확인
	public List<LoginPageVO> readId();
}
