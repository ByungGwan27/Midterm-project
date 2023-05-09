package main.common.wook.admin.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.admin.domain.QnaVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class adminQnaControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pageStr1 = req.getParameter("page1");
		pageStr1 = (pageStr1 == null ? "1" : pageStr1);
		int page1= Integer.parseInt(pageStr1);
		
		String pageStr2 = req.getParameter("page2");
		pageStr2 = (pageStr2 == null ? "1" : pageStr2);
		int page2= Integer.parseInt(pageStr2);
		
		AdminService service = new AdminServiceImpl();
		List<QnaVO> nonVO = service.qnaNoneAns(page1);
		List<QnaVO> ComVO = service.qnaComAns(page2);
		int total1 = service.getQnaCount1();
		int total2 = service.getQnaCount2();
		
		PageDTO dto1 = new PageDTO(page1, total1);
		PageDTO dto2 = new PageDTO(page2, total2);
		
		
		req.setAttribute("NAQ", nonVO);
		req.setAttribute("CAQ", ComVO);
		req.setAttribute("pageInfo1", dto1);
		req.setAttribute("pageInfo2", dto2);
		
		return "adminpage/adminQnaPage.tiles";
	}

}
