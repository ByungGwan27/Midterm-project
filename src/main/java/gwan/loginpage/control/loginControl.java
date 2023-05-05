package gwan.loginpage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gwan.loginpage.domain.LoginPageVO;
import gwan.loginpage.service.LoginPageService;
import gwan.loginpage.service.LoginPageServiceImpl;
import main.common.control.Control;

public class loginControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String id = req.getParameter("loginId");
		String pw = req.getParameter("loginPw");
		
		LoginPageVO vo = new LoginPageVO();
		vo.setMemberId(id);
		vo.setMemberPw(pw);
		
		LoginPageService service = new LoginPageServiceImpl();
		vo = service.loginCheck(vo);
		
		if(vo != null) {
			
			session.setAttribute("id", vo.getMemberId());
			session.setAttribute("pw", vo.getMemberPw());
			session.setAttribute("name", vo.getMemberName());
			session.setAttribute("birth", vo.getMemberBirth());
			session.setAttribute("email", vo.getMemberEmail());
			session.setAttribute("phone", vo.getMemberPhone());
			session.setAttribute("status", vo.getMemberStatus()); //탈퇴여부
			session.setAttribute("nickname", vo.getMemberNickname());
			session.setAttribute("profile", vo.getMemberProfile());
			session.setAttribute("point", vo.getMemberPoint());
			session.setAttribute("thema", vo.getMemberThema());
			session.setAttribute("joindate", vo.getMemberJoindate());
			session.setAttribute("grade", vo.getMemberGrade());
			
			return "mainpage/mainPage.tiles";
		} else {
			return "gwanLoginPage/loginPage.tiles";
		}
		
	}

}
