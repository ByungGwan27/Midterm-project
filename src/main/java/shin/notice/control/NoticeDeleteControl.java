package shin.notice.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import shin.notice.domain.NoticeVO;
import shin.notice.service.NoticeService;
import shin.notice.service.NoticeServiceImpl;

public class NoticeDeleteControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String noticeId = req.getParameter("nid2");
		System.out.println("test" + noticeId);
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeId(Integer.parseInt(noticeId));
		NoticeService service = new NoticeServiceImpl();
		service.noticeDelete(Integer.parseInt(noticeId));
		System.out.println("test" + noticeId);
	
		return "noticeList.do";
	}
		
}
