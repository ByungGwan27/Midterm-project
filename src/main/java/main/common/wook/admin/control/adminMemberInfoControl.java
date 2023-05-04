package main.common.wook.admin.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.common.control.Control;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;
import main.common.wook.main.domain.MemberVO;

public class adminMemberInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		MemberVO member = new MemberVO();
		member.setMemberId(id);
		
		AdminService service = new AdminServiceImpl();
		MemberVO vo = service.memberInfo(member);
		
		System.out.println(vo);
		
		HttpSession session = req.getSession();
		session.setAttribute("memberInfo", vo);
		
		return "adminpage/adminMemberInfo.tiles";
	}

}
