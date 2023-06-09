package gwan.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import gwan.loginpage.domain.LoginPageVO;
import gwan.mypage.domain.MyPageVO;

public interface MyPageMapper {
	
	// 메인페이지
	//방문예정
	public List<MyPageVO> willVisit(@Param("memberId") String memberId, @Param("page") int page);
	public int deleteWillVisit(int reservationId);
	public int readWillvisitPageCount(String memberId);
	//방문중
	public List<MyPageVO> visiting(@Param("memberId") String memberId, @Param("page") int page);
	public int readvisitingPageCount(String memberId);
	//방문완료
	public List<MyPageVO> visited(@Param("memberId") String memberId, @Param("page") int page);
	public int readvisitedPageCount(String memberId);
	
	// 위시리스트
	// 특정 회원 조회
	public List<MyPageVO> readWishList(@Param("memberId") String memberId, @Param("page") int page);
	// 단건삭제
	public int deleteWishList(int wishlistId);
	// 위시리스트 갯수
	public int readWishPageCount(String memberId);
	
	// 보유쿠폰
	public List<MyPageVO> readCoupon(String memberId);
	
	//회원정보수정
	public int updateMemberInfo(LoginPageVO vo);
	
	//Q&A
	// 자주묻는 질문
	public List<MyPageVO> readQnaBest();
	// 자신 qna 가져오기
	public List<MyPageVO> readQnaSelf(String memberId);
	// Q&A작성
	public int createQnaQ(MyPageVO vo);
	
	//메세지
	// 프로필 조회
	public List<MyPageVO> readProfile(String memberId);
	public List<MyPageVO> readProfileMessage(String memberId);
	public List<MyPageVO> readMessage(@Param("memberId") String memberId, @Param("memberId2") String memberId2);
	public List<MyPageVO> readAllMessage(String memberId, String memberId2);
	public int createMessage(MyPageVO vo);
	public int updateMessage(int messageId);
	public int updateMessageCheck(String memberId, String memberId2);
	
	//신고
	public int createDec(MyPageVO vo);
	
	//후기
	public int createComment(MyPageVO vo);
	
	//메세지 갯수
	public int readCountmessage(String memberId);
	public void updateMessageCheck(MyPageVO vo);
	
	//호텔 인포 : 위시리스트 추가
	public int createWishList(@Param("memberId") String memberId, @Param("hotelId") int hotelId);
	
}
