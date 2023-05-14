package shin.notice.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.control.PageDTO;
import shin.notice.domain.NoticeVO;
import shin.notice.service.NoticeService;
import shin.notice.service.NoticeServiceImpl;

public class NoticeDetailControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String noticeId = req.getParameter("noticeId");
		//String page = req.getParameter("page");
		System.out.println(noticeId);
		//System.out.println(page);
		NoticeService service = new NoticeServiceImpl();
		NoticeVO noticeInfo = service.getNotice(Integer.parseInt(noticeId));
		req.setAttribute("noticeInfo", noticeInfo);
		System.out.println(noticeId);
		//공지사항 상세페이지
//		List<NoticeVO> noticeList = service.noticeList(Integer.parseInt(page));
//		req.setAttribute("noticeList", noticeList);
		
//		String pageStr = req.getParameter("page");
//		pageStr = pageStr == null ? "1" : pageStr; 
//		int page = Integer.parseInt(pageStr);
		
		
		//int total = service.totalCount();
		//List<NoticeVO> list = service.noticeList(page); 
		
	//	PageDTO dto = new PageDTO(page, total);
		
		//req.setAttribute("list", list);
		//req.setAttribute("pageInfo", dto);
		
		
		return "noticepage/noticeDetail.tiles";
	}

}
