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
	public List<MyPageVO> willVisit(String memberId, int page) {
		return mapper.willVisit(memberId, page);
	}

	@Override
	public List<MyPageVO> visiting(String memberId, int page) {
		return mapper.visiting(memberId, page);
	}

	@Override
	public List<MyPageVO> visited(String memberId, int page) {
		return mapper.visited(memberId, page);
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
	public List<MyPageVO> readProfile(String memberId) {
		return mapper.readProfile(memberId);
	}

	@Override
	public boolean deleteWillVisit(int reservationId) {
		return mapper.deleteWillVisit(reservationId) == 1;
	}

	@Override
	public int readWillvisitPageCount(String memberId) {
		return mapper.readWillvisitPageCount(memberId);
	}

	@Override
	public int readvisitingPageCount(String memberId) {
		return mapper.readvisitingPageCount(memberId);
	}

	@Override
	public int readvisitedPageCount(String memberId) {
		return mapper.readvisitedPageCount(memberId);
	}

	@Override
	public List<MyPageVO> readProfileMessage(String memberId) {
		return mapper.readProfileMessage(memberId);
	}

	@Override
	public List<MyPageVO> readMessage(String memberId, String memberId2) {
		return mapper.readMessage(memberId, memberId2);
	}

	@Override
	public List<MyPageVO> readAllMessage(String memberId, String memberId2) {
		return mapper.readAllMessage(memberId, memberId2);
	}

	@Override
	public boolean createMessage(MyPageVO vo) {
		mapper.updateMessageCheck(vo);
		return mapper.createMessage(vo) == 1;
	}

	@Override
	public boolean updateMessage(int messageId) {
		return mapper.updateMessage(messageId) == 1;
	}

	@Override
	public boolean createDec(MyPageVO vo) {
		return mapper.createDec(vo) == 1;
	}

	@Override
	public boolean createComment(MyPageVO vo) {
		return mapper.createComment(vo) == 1;
	}

	@Override
	public int readCountmessage(String memberId) {
		return mapper.readCountmessage(memberId);
	}

	@Override
	public boolean createWishList(String memberId, int hotelId) {
		return mapper.createWishList(memberId, hotelId) == 1;
	}
	
	
}
