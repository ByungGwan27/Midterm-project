package gwan.mypage.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageWishListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String memberId = req.getParameter("memberId");
//		System.out.println("테스트1" + session.getAttribute("id"));
//		List<MyPageVO> result = service.readWishList(memberId);
		
		HttpSession session = req.getSession();
		MyPageService service = new MyPageServiceImpl();
		List<MyPageVO> list = service.readWishList((String) session.getAttribute("id"));
		req.setAttribute("MainWishList", list);
		
		return "mypage/myPageWishList.tiles";
	}

}
