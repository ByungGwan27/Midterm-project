package gwan.mypage.service;

import java.util.List;

import gwan.mypage.domain.MyPageVO;

public interface MyPageService {
	//특정 회원 위시리스트 조회
	public List<MyPageVO> readWishList(String memberId);

}
