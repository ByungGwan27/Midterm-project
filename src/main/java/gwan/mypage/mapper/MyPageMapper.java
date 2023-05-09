package gwan.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import gwan.mypage.domain.MyPageVO;

public interface MyPageMapper {
	
	
	public List<MyPageVO> willVisit(String memberId);
	public List<MyPageVO> visiting(String memberId);
	public List<MyPageVO> visited(String memberId);
	
	// 위시리스트
	// 특정 회원 조회
	public List<MyPageVO> readWishList(@Param("memberId") String memberId, @Param("page") int page);
	// 단건삭제
	public int deleteWishList(int wishlistId);
	// 위시리스트 갯수
	public int readWishPageCount(String memberId);
	
	//회원정보수정
	public int updateMemberInfo(MyPageVO vo);
	
	
}
