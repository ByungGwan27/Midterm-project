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

				if (req.getMethod().equals("GET")) {
					
					String nid = req.getParameter("nid");
					NoticeVO vo = service.getNotice(Integer.parseInt(nid));
					req.setAttribute("noticeInfo", vo);

					return "notice/noticeModify.tiles";

					// post 방식 요청
				} else if (req.getMethod().equals("POST")) {
					String nid = req.getParameter("nid");
					String title = req.getParameter("title");
					String noticeContent = req.getParameter("noticeContent");
					//값을 불러오기 위해 새롭게 생성 후 셋팅
					NoticeVO vo = new NoticeVO();
					vo.setNoticeId(Integer.parseInt(nid));
					vo.setNoticeTitle(title);
					vo.setNoticeContent(noticeContent);
					
					if(service.modifyNotice(vo)) {
						return "noticeList.do";
						
					}else {
						return "noticeModify.do";
					}
					
				}
				return null;
				

			}

}
