package gwan.mypage.service;

import java.util.List;

import gwan.mypage.domain.MyPageVO;

public interface MyPageService {
	
	public List<MyPageVO> willVisit(String memberId);
	public List<MyPageVO> visiting(String memberId);
	public List<MyPageVO> visited(String memberId);
	
	//위시리스트 
	// 특정 회원 조회
	public List<MyPageVO> readWishList(String memberId, int page);
	// 단건 삭제
	public boolean deleteWishList(int wishlistId);
	// 위시리스트 갯수
	public int readWishPageCount(String memberId);
	
	//회원정보수정
	public boolean updateMemberInfo(MyPageVO vo);
}
