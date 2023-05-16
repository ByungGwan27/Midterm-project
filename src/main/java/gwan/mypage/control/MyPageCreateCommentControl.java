package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageCreateCommentControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		int hotelId = Integer.parseInt(req.getParameter("commenthotelid"));
		System.out.println(hotelId);
		int reviewPoint = Integer.parseInt(req.getParameter("point"));
		System.out.println(reviewPoint);
		String content = req.getParameter("pdesc");
		System.out.println(content);
		
		MyPageVO vo = new MyPageVO();
		vo.setMemberId(id);
		vo.setHotelId(hotelId);
		vo.setReviewPoint(reviewPoint);
		vo.setReviewContent(content);
		
		MyPageService service = new MyPageServiceImpl();
		service.createComment(vo);
		
		return "myPageVisited.do";
	}

}
