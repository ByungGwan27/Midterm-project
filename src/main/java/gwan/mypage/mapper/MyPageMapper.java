package gwan.mypage.mapper;

import java.util.List;

import gwan.mypage.domain.MyPageVO;

public interface MyPageMapper {
	
	
	public List<MyPageVO> willVisit(String memberId);
	public List<MyPageVO> visiting(String memberId);
	public List<MyPageVO> visited(String memberId);
	
	// 위시리스트
	public List<MyPageVO> readWishList(String memberId);
	public int deleteWishList(int wishlistId);
	public int deleteWishListAll(String memberId);
	
	
}
