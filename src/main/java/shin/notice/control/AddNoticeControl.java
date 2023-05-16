package shin.notice.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import main.common.control.Control;
import shin.notice.domain.NoticeVO;
import shin.notice.service.NoticeService;
import shin.notice.service.NoticeServiceImpl;

public class AddNoticeControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String memberId = req.getParameter("memberId");
		String noticeTitle = req.getParameter("noticeTitle");
		String noticeContent = req.getParameter("noticeContent");
	
		NoticeVO vo = new NoticeVO();

		vo.setMemberId(memberId);
		vo.setNoticeTitle(noticeTitle);
		vo.setNoticeContent(noticeContent);

		
		NoticeService service = new NoticeServiceImpl();


		if (service.addNotice(vo)) {
			return "noticeList.do";

		} else {

			return "noticeAddForm.do";
		}
	}

}
