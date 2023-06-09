package main.common.wook.admin.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.admin.domain.DeclarationVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class adminDeclarationInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int decId = Integer.parseInt(req.getParameter("id"));
		
		AdminService service = new AdminServiceImpl();
		DeclarationVO vo = service.decInfo(decId);
		
		req.setAttribute("decInfo", vo);
		
		
		return "adminpage/adminDeclarationInfo.tiles";
	}

}
