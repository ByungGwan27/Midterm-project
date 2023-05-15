package gwan.mypage.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageQnaControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		MyPageService service = new MyPageServiceImpl();
		List<MyPageVO> bestList = service.readQnaBest();
		List<MyPageVO> selfList = service.readQnaSelf(id);
		
		req.setAttribute("bestQna", bestList);
		req.setAttribute("selfQna", selfList);
		
		return "mypage/myPageQna.tiles";
	}

}
