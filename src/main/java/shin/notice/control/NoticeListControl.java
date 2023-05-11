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



public class NoticeListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pageStr = req.getParameter("page");
		pageStr = pageStr == null ? "1" : pageStr; 
		int page = Integer.parseInt(pageStr);
	
		NoticeService service = new NoticeServiceImpl();
		int total = service.totalCount();
		List<NoticeVO> list = service.noticeList(page); 
		
		PageDTO dto = new PageDTO(page, total);
		
		req.setAttribute("list", list);
		req.setAttribute("pageInfo", dto);
		
		
		
		return "noticepage/noticeList.tiles";
	}

}
