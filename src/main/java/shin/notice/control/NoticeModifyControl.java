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
		String noticeId = req.getParameter("noticeId");
		System.out.println("noticeId : "+noticeId);
		
		//
		
		
		return "noticepage/noticeModify.tiles";

	}

}
