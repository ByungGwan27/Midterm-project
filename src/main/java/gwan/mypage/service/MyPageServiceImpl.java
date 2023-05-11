package gwan.mypage.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gwan.loginpage.domain.LoginPageVO;
import gwan.mypage.domain.MyPageVO;
import gwan.mypage.mapper.MyPageMapper;
import main.common.control.DataSource;

public class MyPageServiceImpl implements MyPageService {
	SqlSession session = DataSource.getInstance().openSession(true);
	MyPageMapper mapper = session.getMapper(MyPageMapper.class);
	
	//특정 회원 위시리스트 조회
	@Override
	public List<MyPageVO> readWishList(String memberId, int page) {
		return mapper.readWishList(memberId, page);
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
		return mapper.visited(memberId);
	}

	@Override
	public boolean deleteWishList(int wishlistId) {
		return mapper.deleteWishList(wishlistId) == 1;
	}

	@Override
	public boolean updateMemberInfo(LoginPageVO vo) {
		return mapper.updateMemberInfo(vo) == 1;
	}

	@Override
	public int readWishPageCount(String memberId) {
		return mapper.readWishPageCount(memberId);
	}

	@Override
	public List<MyPageVO> readCoupon(String memberId) {
		return mapper.readCoupon(memberId);
	}

	@Override
	public boolean createQnaQ(MyPageVO vo) {
		return mapper.createQnaQ(vo) == 1;
	}

	@Override
	public List<MyPageVO> readQnaSelf(String memberId) {
		return mapper.readQnaSelf(memberId);
	}

	@Override
	public List<MyPageVO> readQnaBest() {
		return mapper.readQnaBest();
	}

	@Override
	public List<MyPageVO> readProfile(MyPageVO vo) {
		return mapper.readProfile(vo);
	}
	
	
}
