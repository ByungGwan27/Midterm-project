package shin.notice.control;

import java.io.IOException;

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

		// get 방식 요청
		NoticeService service = new NoticeServiceImpl();
		if (req.getMethod().equals("POST")) {
			String noticeId = req.getParameter("noticeId");
			String noticeTitle = req.getParameter("noticeTitle");
			String noticeContent = req.getParameter("noticeContent");
			// 값을 불러오기 위해 새롭게 생성 후 셋팅
			NoticeVO noticeInfo = new NoticeVO();
			noticeInfo.setNoticeId(Integer.parseInt(noticeId));
			noticeInfo.setNoticeTitle(noticeTitle);
			noticeInfo.setNoticeContent(noticeContent);
			
			req.setAttribute("noticeInfo", noticeInfo);

			if (service.modifyNotice(noticeInfo)) {
				System.out.println("성공");
				return "noticeList.do";

			} else {
				return "noticeModify.do";
			}

		}
		return "noticepage/noticeModify.tiles";

	}

}
