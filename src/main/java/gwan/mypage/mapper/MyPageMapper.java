package gwan.mypage.mapper;

import java.util.List;

import gwan.mypage.domain.MyPageVO;

public interface MyPageMapper {
	public List<MyPageVO> readWishList(String memberId);
}
