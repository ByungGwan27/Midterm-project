package gwan.mypage.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gwan.mypage.domain.MyPageVO;
import gwan.mypage.mapper.MyPageMapper;
import main.common.control.DataSource;

public class MyPageServiceImpl implements MyPageService {
	SqlSession session = DataSource.getInstance().openSession(true);
	MyPageMapper mapper = session.getMapper(MyPageMapper.class);
	
	//특정 회원 위시리스트 조회
	@Override
	public List<MyPageVO> readWishList(String memberId) {
		return mapper.readWishList(memberId);
	}

	@Override
	public List<MyPageVO> willVisit(String memberId) {
		return mapper.willVisit(memberId);
	}

	@Override
	public List<MyPageVO> visiting(String memberId) {
		return mapper.visiting(memberId);
	}

	@Override
	public List<MyPageVO> visited(String memberId) {
		// TODO Auto-generated method stub
		return mapper.visited(memberId);
	}
	
	
}
