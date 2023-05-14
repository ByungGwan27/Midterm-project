package shin.notice.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import shin.notice.domain.NoticeVO;

public class NoticeDeleteControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String noticeId = req.getParameter("noticeId");
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.parseInt(noticeId));
		
		
		
		return "noticepage/noticeDelete.tiles";
	}

}
