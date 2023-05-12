package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;
import main.common.control.PageDTO;

public class MyPageWishListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String memberId = req.getParameter("memberId");
//		System.out.println("테스트1" + session.getAttribute("id"));
//		List<MyPageVO> result = service.readWishList(memberId);
		
//		HttpSession session = req.getSession();
//		MyPageService service = new MyPageServiceImpl();
//		List<MyPageVO> list = service.readWishList((String) session.getAttribute("id"));
//		req.setAttribute("MainWishList", list);
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		
		//페이징 작업
		String pageStr = req.getParameter("page");
		pageStr = pageStr == null ? "1" : pageStr;
		int page = Integer.parseInt(pageStr);
		
		MyPageService service = new MyPageServiceImpl();
		int total = service.readWishPageCount(id);
		
		PageDTO dto = new PageDTO(page, total);
		req.setAttribute("pageInfo", dto);
		
		//System.out.println("페이지" + page);
		//System.out.println("토탈" + total);
		
		
		return "mypage/myPageWishList.tiles";
	}

}
