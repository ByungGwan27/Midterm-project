package gwan.mypage.service;

import java.util.List;

import gwan.loginpage.domain.LoginPageVO;
import gwan.mypage.domain.MyPageVO;

public interface MyPageService {
	
	//마이페이지홈
	public List<MyPageVO> willVisit(String memberId, int page);
	public boolean deleteWillVisit(int reservationId);
	public int readWillvisitPageCount(String memberId);
	
	public List<MyPageVO> visiting(String memberId, int page);
	public int readvisitingPageCount(String memberId);
	
	public List<MyPageVO> visited(String memberId, int page);
	public int readvisitedPageCount(String memberId);
	
	//위시리스트 
	// 특정 회원 조회
	public List<MyPageVO> readWishList(String memberId, int page);
	// 단건 삭제
	public boolean deleteWishList(int wishlistId);
	// 위시리스트 갯수
	public int readWishPageCount(String memberId);
	
	// 보유쿠폰
	public List<MyPageVO> readCoupon(String memberId);
	
	//회원정보수정
	public boolean updateMemberInfo(LoginPageVO vo);
	
	//Q&A
	// 자주묻는 질문
	public List<MyPageVO> readQnaBest();
	// 자신 qna 가져오기
	public List<MyPageVO> readQnaSelf(String memberId);
	// Q&A작성
	public boolean createQnaQ(MyPageVO vo);
	
	//메세지
	//메세지
	// 프로필 조회
	public List<MyPageVO> readProfile(String memberId);
	public List<MyPageVO> readProfileMessage(String memberId);
	public List<MyPageVO> readMessage(String memberId, String memberId2);
	public List<MyPageVO> readAllMessage(String memberId, String memberId2);
	public boolean createMessage(MyPageVO vo);
	public boolean updateMessage(int messageId);
	
	//신고
	public boolean createDec(MyPageVO vo);
	//후기
	public boolean createComment(MyPageVO vo);
	
	//메세지 갯수
	public int readCountmessage(String memberId);
	
	//호텔 인포 : 위시리스트 추가
	public boolean createWishList(String memberId, int hotelId);
		
}
