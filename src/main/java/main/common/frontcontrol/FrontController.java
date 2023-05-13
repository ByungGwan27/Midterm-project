package main.common.frontcontrol;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwan.loginpage.ajax.control.CreateUserReadIdAjaxControl;
import gwan.loginpage.ajax.control.CreateUserReadNicknameAjaxControl;
import gwan.loginpage.control.CreateUserControl;
import gwan.loginpage.control.CreateUserPageControl;
import gwan.loginpage.control.ForgotPasswordPageControl;
import gwan.loginpage.control.loginControl;
import gwan.loginpage.control.loginPageControl;
import gwan.loginpage.control.logoutControl;
import gwan.mail.smtp.passwordMail;
import gwan.mail.smtp.passwordResetControl;
import gwan.mypage.ajax.control.MyPageWishAjaxControl;
import gwan.mypage.ajax.control.MyPageWishAjaxDeleteControl;
import gwan.mypage.control.AdminMessagePageControl;
import gwan.mypage.control.MyPageCouponControl;
import gwan.mypage.control.MyPageHomeDelWillVisitControl;
import gwan.mypage.control.MyPageHomeWillVisitControl;
import gwan.mypage.control.MyPageQnaControl;
import gwan.mypage.control.MyPageQnaQControl;
import gwan.mypage.control.MyPageQnaQCreateCkeditorControl;
import gwan.mypage.control.MyPageQnaQCreateControl;
import gwan.mypage.control.MyPageUserInfoChangeControl;
import gwan.mypage.control.MyPageUserInfoChangeInputControl;
import gwan.mypage.control.MyPageUserInfoPwControl;
import gwan.mypage.control.MyPageUserInfoPwInputControl;
import gwan.mypage.control.MyPageWishListControl;
import gwan.mypage.control.MypageHomeControl;
import gwan.mypage.message.control.MyPageMessageControl;
import gwan.mypage.message.control.MyPagecreateMessageControl;
import gwan.mypage.message.control.MyPagereadAllMessageControl;
import gwan.mypage.message.control.MyPagereadMessageControl;
import gwan.mypage.message.control.MyPagereadProfileControl;
import gwan.mypage.message.control.MyPagereadProfileMessageControl;
import gwan.mypage.message.control.MyPageupdateMessageControl;
import jayk.hotelinfo.control.AdminAddHotelControl;
import jayk.hotelinfo.control.AdminAddHotelFormControl;
import jayk.hotelinfo.control.AdminAddRoomControl;
import jayk.hotelinfo.control.AdminAddRoomFormControl;
import jayk.hotelinfo.control.AdminGetHotelControl;
import jayk.hotelinfo.control.AdminGetRoomControl;
import jayk.hotelinfo.control.AdminHotelListControl;
import jayk.hotelinfo.control.AdminModifyHotelInfoControl;
import jayk.hotelinfo.control.AdminModifyRoomInfoControl;
import jayk.hotelinfo.control.GetHotelControl;
import jayk.hotelinfo.control.HotelListControl;
import main.common.control.Control;
import main.common.wook.admin.control.AdminDecCancleControl;
import main.common.wook.admin.control.AdminModifyMemberControl;
import main.common.wook.admin.control.adminDecAcceptControl;
import main.common.wook.admin.control.adminDecListControl;
import main.common.wook.admin.control.adminDecListFormControl;
import main.common.wook.admin.control.adminDeclarationInfoControl;
import main.common.wook.admin.control.adminDelMemberControl;
import main.common.wook.admin.control.adminImminentResControl;
import main.common.wook.admin.control.adminMemberInfoControl;
import main.common.wook.admin.control.adminMemberListControl;
import main.common.wook.admin.control.adminPageControl;
import main.common.wook.admin.control.adminQnaAnswerControl;
import main.common.wook.admin.control.adminQnaControl;
import main.common.wook.admin.control.adminQnaFormControl;
import main.common.wook.admin.control.adminQnaSecondControl;
import main.common.wook.admin.control.adminResAccept;
import main.common.wook.admin.control.adminResCancle;
import main.common.wook.admin.control.adminReservationInfoControl;
import main.common.wook.admin.control.adminReservationListControl;
import main.common.wook.admin.control.allMemberListControl;
import main.common.wook.admin.control.memberChartDataControl;
import main.common.wook.admin.control.payChartDataControl;
import main.common.wook.admin.control.payCountChartDataControl;
import main.common.wook.pay.control.mainHotelInfoControl;
import main.common.wook.pay.control.payPageFormcontrol;
import main.common.wook.pay.control.successPayControl;
import shin.admin.control.AdminPayListControl;
import shin.notice.control.AddNoticeControl;
import shin.notice.control.NoticeAddFormControl;
import shin.notice.control.NoticeDetailControl;
import shin.notice.control.NoticeListControl;
import shin.notice.control.NoticeModifyControl;
import shin.post.control.PostDetailControl;
import shin.post.control.PostListControl;
import shin.post.control.PostMemberDetailControl;

public class FrontController extends HttpServlet{
	private Map<String, Control> map;
	String encoding;
	
	public FrontController() {
		map = new HashMap<>();
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		encoding = config.getInitParameter("enc");
		
		//메인페이지
		map.put("/mainPage.do", new MainControl());
		
		
		// 김성욱
		
		//관리자 페이지
		//관리자 대시보드
		map.put("/adminPage.do", new adminPageControl());
		//관리자 결제건수 차트 데이터
		map.put("/payCountChartData.do", new payCountChartDataControl());
		//관리자 매출 차트 데이터
		map.put("/payChartData.do", new payChartDataControl());
		//관리자 회원 차트 데이터
		map.put("/memberChartData.do", new memberChartDataControl());
		//관히자 QnA 폼
		map.put("/adminQnaForm.do" , new adminQnaFormControl());
		//관리자 QnA 데이터
		//관리자 Qna page1
		map.put("/adminQnaPage1.do" , new adminQnaControl());		
		//관리자 Qna page2
		map.put("/adminQnaPage2.do", new adminQnaSecondControl());
		//관리자 Qna 답변
		map.put("/adminQnaAnswer.do" , new adminQnaAnswerControl());
		//관리자 전체회원정보
		map.put("/adminMemberList.do", new adminMemberListControl());
		//관리자 단일회원정보
		map.put("/adminMemberInfo.do", new adminMemberInfoControl());
		//관리자 회원정보 수정
		map.put("/adminModifyMember.do", new AdminModifyMemberControl());
		//관리자 회원정보 탈퇴
		map.put("/adminDelMember.do", new adminDelMemberControl());
		//관리자 전체신고정보 폼
		map.put("/adminDecListForm.do", new adminDecListFormControl());
		//관리자 전체신고정보 //사용X
		map.put("/adminDecList.do", new adminDecListControl());
		//관리자 단일신고정보
		map.put("/adminDeclarationInfo.do", new adminDeclarationInfoControl());
		//관리자 신고반려
		map.put("/adminDecCancle.do", new AdminDecCancleControl());
		//관리자 신고처리
		map.put("/adminDecAccept.do", new adminDecAcceptControl());
		//관리자 전체예약정보
		map.put("/adminReservationList.do", new adminReservationListControl());
		//관리자 단일예약정보
		map.put("/adminReservationInfo.do", new adminReservationInfoControl());
		//관리자 예약수락
		map.put("/adminResAccept.do", new adminResAccept());
		//관리자 예약거절
		map.put("/adminResCancle.do", new adminResCancle());
		
		//관리자 임박 예약 조회
		map.put("/adminImminentRes.do",new adminImminentResControl());
		
		//메인 페이지 회원 정보
		map.put("/allMemberList.do", new allMemberListControl());
		
		//결제창 페이지
		map.put("/payPageForm.do", new payPageFormcontrol());
		//결제 완료 시 테이블에 데이터 입력
		map.put("/successPay.do", new successPayControl());
		
		//메인페이지에서 숙소 페이지 검색이동
		 map.put("/mainHotelInfo.do", new mainHotelInfoControl());
		
		// 김자영
		//숙소리스트
		map.put("/hotelListPage.do", new HotelListControl());
		//인포페이지
		map.put("/hotelInfoPage.do", new GetHotelControl());
		//관리자숙소리스트페이지 
		map.put("/adminHotelList.do", new AdminHotelListControl());
		//관리자숙소추가페이지 
		map.put("/adminAddHotelForm.do", new AdminAddHotelFormControl());
		map.put("/adminAddHotelPage.do", new AdminAddHotelControl());
		//관리자숙소객실추가페이지
		map.put("/admimAddRoomForm.do", new AdminAddRoomFormControl());
		map.put("/adminAddRoomPage.do", new AdminAddRoomControl());
		//관리자숙소확인페이지
		map.put("/adminHotelInfoPage.do", new AdminGetHotelControl());
		//관리자숙소정보수정페이지
		map.put("/adminHotelInfoModifyPage.do", new AdminModifyHotelInfoControl());
		//관리자숙소객실확인페이지
		map.put("/adminRoomInfoPage.do", new AdminGetRoomControl());
		//관리자숙소정보수정페이지
		map.put("/adminRoomInfoModifyPage.do", new AdminModifyRoomInfoControl());
		
	
		
		// 신지은
		//여행 포스트 리스트
		map.put("/postList.do", new PostListControl());
		//여행 포스트 상세페이지
		map.put("/postDetail.do", new PostDetailControl());
		//인플루언서 선택 시 상세페이지
		map.put("/postMemberDetail.do", new PostMemberDetailControl());
		//공지사항 추가 페이지
		map.put("/addNotice.do", new AddNoticeControl());
		//공지사항 작성페이지
		map.put("/noticeAddForm.do", new NoticeAddFormControl());
		//공지사항 상세페이지(단건조회)
		map.put("/noticeDetail.do", new NoticeDetailControl());
		//공지사항 수정페이지
		map.put("/noticeModify.do", new NoticeModifyControl());
		//공지사항 리스트
		map.put("/noticeList.do", new NoticeListControl());
		//관리자 결제정보창
		map.put("/adminPayList.do", new AdminPayListControl());
		
		
		
		// 강병관
		//마이페이지
		//마이페이지 홈(예약내역 이동)
		map.put("/myPageHome.do", new MypageHomeControl());
		//마이페이지 - Json 처리
		map.put("/myPageHomeWillVisit.do", new MyPageHomeWillVisitControl());
		map.put("/myPageHomeDelWillVisit.do", new MyPageHomeDelWillVisitControl());
		
		//마이페이지(위시리스트)
		map.put("/myPageWishList.do", new MyPageWishListControl());
		map.put("/myPageWishListAjax.do", new MyPageWishAjaxControl());
		//마이페이지(위시리스트) - 삭제(button, checkbox)
		map.put("/myPageWishListAjaxDelete.do", new MyPageWishAjaxDeleteControl());
		
		//마이페이지(쿠폰)
		map.put("/myPageCoupon.do", new MyPageCouponControl());
		
		//마이페이지(메세지)
		//메세지함 이동
		map.put("/myPageMessage.do", new MyPageMessageControl());
		//프로필 조회
		map.put("/myPagereadProfile.do", new MyPagereadProfileControl());
		//프로필 상세 조회
		map.put("/myPagereadProfileMessage.do", new MyPagereadProfileMessageControl());
		//프로필 메세지함
		map.put("/myPagereadMessage.do", new MyPagereadMessageControl());
		//프로필 메세지함(전체 읽기)
		map.put("/myPagereadAllMessage.do", new MyPagereadAllMessageControl());
		//메세지 쓰기
		map.put("/myPagecreateMessage.do", new MyPagecreateMessageControl());
		//메세지 업데이트(삭제)
		map.put("/myPageupdateMessage.do", new MyPageupdateMessageControl());
		
		
		//마이페이지(회원정보수정) - pw확인
		map.put("/myPageUserInfoPw.do", new MyPageUserInfoPwControl());
		map.put("/myPageUserInfoPwInput.do", new MyPageUserInfoPwInputControl());
		//마이페이지(회원정보수정) - 정보 수정창
		map.put("/myPageUserInfoChange.do", new MyPageUserInfoChangeControl());
		map.put("/myPageUserInfoChangeInput.do", new MyPageUserInfoChangeInputControl());
		
		//마이페이지(Q&A)
		map.put("/myPageQna.do", new MyPageQnaControl());
		//Q&A(질문 작성)
		map.put("/myPageQnaQ.do", new MyPageQnaQControl());
		map.put("/myPageQnaQCreate.do", new MyPageQnaQCreateControl());
		map.put("/myPageQnaQCreateCkeditor.do", new MyPageQnaQCreateCkeditorControl());
		
		// 로그인 페이지 관련
		//로그인페이지(이동)
		map.put("/loginPage.do", new loginPageControl());
		//로그인정보 확인(로그인시도)
		map.put("/login.do", new loginControl());
		
		//로그아웃
		map.put("/logout.do", new logoutControl());
		
		//회원가입
		map.put("/createUserPage.do", new CreateUserPageControl());
		map.put("/createUser.do", new CreateUserControl());
		//회원가입(중복검사)
		map.put("/createUserReadIdAjax.do", new CreateUserReadIdAjaxControl());
		map.put("/createUserReadNicknameAjax.do", new CreateUserReadNicknameAjaxControl());
		
		//pw찾기(이동)
		map.put("/forgotPasswordPage.do", new ForgotPasswordPageControl());
		//비밀번호찾기
		map.put("/passwordReset.do", new passwordResetControl());
		
		//관리자 메세지 페이지
		map.put("/adminMessagePage.do", new AdminMessagePageControl());
		
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding(encoding);

		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String path = uri.substring(context.length());
		System.out.println("path : " + path);
		
		Control control = map.get(path);
		String viewPage = control.execute(req, resp);
		System.out.println("viewPage : " + viewPage);

		if (viewPage.endsWith(".do")) {
			resp.sendRedirect(viewPage);
			return;
		}
		
		if (viewPage.endsWith(".json")) {
			resp.setContentType("text/json;charset=UTF-8");
			resp.getWriter().print(viewPage.substring(0, viewPage.length() - 5));
			return;
		}

		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);
	}
	
}
