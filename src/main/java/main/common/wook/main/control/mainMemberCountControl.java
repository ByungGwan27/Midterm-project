package main.common.wook.main.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.common.control.Control;
import main.common.wook.main.domain.MemberVO;
import main.common.wook.main.service.MemberService;
import main.common.wook.main.service.MemberServiceImpl;

public class mainMemberCountControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberService service = new MemberServiceImpl();
		MemberVO vo = service.memberCount();
		int count = vo.getMemberCount();
		
		HttpSession session = req.getSession();
		session.setAttribute("memberCount", count);

		
		String json = "[{\"memberCount\":"+count+"}]";
		
		
		return json+".json";
	}

}
