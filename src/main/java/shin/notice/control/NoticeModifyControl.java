package shin.notice.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import shin.notice.domain.NoticeVO;
import shin.notice.service.NoticeService;
import shin.notice.service.NoticeServiceImpl;

public class NoticeModifyControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		//공지사항ID 
		int noticeId = Integer.parseInt(req.getParameter("noticeId"));
		String noticeTitle = req.getParameter("noticeTitle");
		System.out.println("noticeId : "+noticeId);
		req.setAttribute("nid", noticeId);
		req.setAttribute("noticeTitle", noticeTitle);
		System.out.println("noticeTitle : " + noticeTitle);
		
		//
		
		
		return "noticepage/noticeModify.tiles";

	}

}
