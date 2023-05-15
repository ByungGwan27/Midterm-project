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

public class MypageHomeControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		//페이징 작업
		String pageStr = req.getParameter("page");
		pageStr = pageStr == null ? "1" : pageStr;
		int page = Integer.parseInt(pageStr);
		
		MyPageService service = new MyPageServiceImpl();
		int total = service.readWillvisitPageCount(id);
		
		PageDTO dto = new PageDTO(page, total);
		req.setAttribute("pageInfo", dto);
		
		return "mypage/myPageHome.tiles";
	}

}
