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


import gwan.loginpage.control.CreateUserPageControl;
import gwan.loginpage.control.ForgotPasswordPageControl;
import gwan.loginpage.control.loginPageControl;
import gwan.mypage.control.MyPageCouponControl;
import gwan.mypage.control.MyPageMessageControl;
import gwan.mypage.control.MyPageQnaControl;
import gwan.mypage.control.MyPageQnaQControl;
import gwan.mypage.control.MyPageUserInfoChangeControl;
import gwan.mypage.control.MyPageWishListControl;
import gwan.mypage.control.MypageHomeControl;
import jayk.hotelinfo.control.AdminAddHotelControl;
import jayk.hotelinfo.control.AdminHotelListControl;
import jayk.hotelinfo.control.AdminModifyHotelInfoControl;
import jayk.hotelinfo.control.HotelListControl;
import jayk.hotelinfo.control.GetHotelControl;
import main.common.control.Control;
import main.common.wook.admin.control.adminDeclarationInfoControl;
import main.common.wook.admin.control.adminDeclarationListControl;
import main.common.wook.admin.control.adminMemberInfoControl;
import main.common.wook.admin.control.adminMemberListControl;
import main.common.wook.admin.control.adminPageControl;
import main.common.wook.admin.control.adminQnaControl;
import main.common.wook.admin.control.adminReservationInfoControl;
import main.common.wook.admin.control.adminReservationListControl;
import shin.admin.control.AdminPayListControl;
import shin.notice.control.NoticeAddFormControl;
import shin.notice.control.NoticeListControl;
import shin.post.control.PostDetailControl;
import shin.post.control.PostListControl;

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
		map.put("/adminPage.do", new adminPageControl());
		map.put("/adminQna.do" , new adminQnaControl());
		map.put("/adminMemberList.do", new adminMemberListControl());
		map.put("/adminDeclarationList.do", new adminDeclarationListControl());
		map.put("/adminReservationList.do", new adminReservationListControl());
		map.put("/adminMemberInfo.do", new adminMemberInfoControl());
		map.put("/adminDeclarationInfo.do", new adminDeclarationInfoControl());
		map.put("/adminReservationInfo.do", new adminReservationInfoControl());
		
		
		// 김자영
		//숙소리스트
		map.put("/hotelListPage.do", new HotelListControl());
		//인포페이지
		map.put("/hotelInfoPage.do", new GetHotelControl());
		//관리자숙소추가페이지 
		map.put("/adminAddHotelPage.do", new AdminAddHotelControl());
		//관리자숙소리스트페이지 
		map.put("/adminHotelList.do", new AdminHotelListControl());
		//관리자숙소정보수정페이지
		map.put("/adminHotelInfoModifyPage.do", new AdminModifyHotelInfoControl());
		
		// 신지은
		
		//여행 포스트 리스트
		map.put("/postList.do", new PostListControl());
		//여행 포스트 상세페이지
		map.put("/postDetail.do", new PostDetailControl());
		//공지사항 페이지
		map.put("/noticeList.do", new NoticeListControl());
		//공지사항 작성페이지
		map.put("/noticeAddForm.do", new NoticeAddFormControl());
		//관리자 결제정보창
		map.put("/adminPayList.do", new AdminPayListControl());
		
		
		// 강병관
		//마이페이지
		//마이페이지 홈(예약내역)
		map.put("/myPageHome.do", new MypageHomeControl());
		//마이페이지 위시리스트(위시리스트)
		map.put("/myPageWishList.do", new MyPageWishListControl());
		//마이페이지(쿠폰)
		map.put("/myPageCoupon.do", new MyPageCouponControl());
		//마이페이지(메세지)
		map.put("/myPageMessage.do", new MyPageMessageControl());
		//마이페이지(회원정보수정)
		map.put("/myPageUserInfoChange.do", new MyPageUserInfoChangeControl());
		//마이페이지(Q&A)
		map.put("/myPageQna.do", new MyPageQnaControl());
		
		//Q&A 질문 작성 페이지
		map.put("/myPageQnaQ.do", new MyPageQnaQControl());
		
		//로그인페이지
		map.put("/loginPage.do", new loginPageControl());
		//회원가입
		map.put("/createUserPage.do", new CreateUserPageControl());
		//pw찾기
		map.put("/forgotPasswordPage.do", new ForgotPasswordPageControl());
		
		
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding(encoding);

		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String path = uri.substring(context.length());
		System.out.println(path);
		
		Control control = map.get(path);
		String viewPage = control.execute(req, resp);
		System.out.println(viewPage);

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
