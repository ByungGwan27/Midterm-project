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

public class MyPageCreateReportControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		int hotelId = Integer.parseInt(req.getParameter("reporthid"));
		String type = req.getParameter("thema");
		String message = req.getParameter("message");
		
		MyPageVO vo = new MyPageVO();
		vo.setMemberId(id);
		vo.setHotelId(hotelId);
		vo.setDecCategory(type);
		vo.setDecContent(message);
		
		MyPageService service = new MyPageServiceImpl();
		service.createDec(vo);
		
		return "myPageVisited.do";
	}

}
