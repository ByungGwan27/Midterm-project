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

import gwan.mypage.control.MyPageCouponControl;
import gwan.mypage.control.MyPageMessageControl;
import gwan.mypage.control.MyPageQnaControl;
import gwan.mypage.control.MyPageQnaQControl;
import gwan.mypage.control.MyPageUserInfoChangeControl;
import gwan.mypage.control.MyPageWishListControl;
import gwan.mypage.control.MypageHomeControl;
import main.common.control.Control;

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
		
		//5.2 강병관. 마이페이지
		map.put("/myPageHome.do", new MypageHomeControl());
		map.put("/myPageWishList.do", new MyPageWishListControl());
		map.put("/myPageCoupon.do", new MyPageCouponControl());
		map.put("/myPageMessage.do", new MyPageMessageControl());
		map.put("/myPageUserInfoChange.do", new MyPageUserInfoChangeControl());
		map.put("/myPageQna.do", new MyPageQnaControl());
		
		//5.3 강병관 Q&A 질문 작성
		map.put("/myPageQnaQ.do", new MyPageQnaQControl());
		
		
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
