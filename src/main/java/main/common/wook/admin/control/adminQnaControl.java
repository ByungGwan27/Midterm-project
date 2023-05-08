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
		AdminService service = new AdminServiceImpl();
		List<QnaVO> nonVO = service.qnaNoneAns();
		List<QnaVO> ComVO = service.qnaComAns();
		
		req.setAttribute("NAQ", nonVO);
		req.setAttribute("CAQ", ComVO);
		
		return "adminpage/adminQnaPage.tiles";
	}

}
