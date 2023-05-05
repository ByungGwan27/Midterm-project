package main.common.wook.admin.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;
import main.common.wook.main.domain.MemberVO;

public class adminDelMemberControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = (req.getParameter("id"));
		
		AdminService service = new AdminServiceImpl();
		int result = service.adminDelMember(id);
		
		List<MemberVO> list = service.allMemberInfo();
		
		req.setAttribute("allMemberInfo", list);
		
		return "adminpage/adminMemberList.tiles";
	}

}
