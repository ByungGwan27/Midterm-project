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

public class MyPageQnaQCreateCkeditorControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageVO vo = new MyPageVO();
		MyPageService service = new MyPageServiceImpl();
		
		String title = req.getParameter("title");
		String qnaType = req.getParameter("title");
		String content = req.getParameter("pdesc");
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		vo.setMemberId(id);
		vo.setQnaTitle(title);
		vo.setQnaType(qnaType);
		vo.setQnaContent(content);
		
		if (service.createQnaQ(vo)) {
			return "myPageQna.do";
		} else {
			return "myPageQnaQ.do";
		}
		
	}

}
