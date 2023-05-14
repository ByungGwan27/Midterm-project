package shin.notice.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import shin.notice.domain.NoticeVO;
import shin.notice.service.NoticeService;
import shin.notice.service.NoticeServiceImpl;

public class ModifyPageControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("test");
		int noticeId = Integer.parseInt(req.getParameter("noticeId"));
		System.out.println("test" + noticeId);
		String noticeTitle = req.getParameter("noticeTitle");
		String noticeContent = req.getParameter("noticeContent");
		NoticeVO vo = new NoticeVO();
		vo.setNoticeTitle(noticeTitle);
		vo.setNoticeId(noticeId);
		vo.setNoticeContent(noticeContent);
		
		NoticeService service = new NoticeServiceImpl();
		service.modifyNotice(vo);
		
		return "noticepage/noticeList.tiles";
	}

}
