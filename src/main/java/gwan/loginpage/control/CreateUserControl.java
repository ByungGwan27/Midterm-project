package gwan.loginpage.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwan.loginpage.domain.LoginPageVO;
import gwan.loginpage.service.LoginPageService;
import gwan.loginpage.service.LoginPageServiceImpl;
import main.common.control.Control;

public class CreateUserControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String nname = req.getParameter("nname");
		String id = req.getParameter("id");
		String email = req.getParameter("email");
		String pw = req.getParameter("pw");
		String phone = req.getParameter("phone");
		String bd = req.getParameter("truebd");
		
		LoginPageVO vo = new LoginPageVO();
		LoginPageService service = new LoginPageServiceImpl();
		
		vo.setMemberName(name);
		vo.setMemberNickname(nname);
		vo.setMemberId(id);
		vo.setMemberEmail(email);
		vo.setMemberPw(pw);
		vo.setMemberPhone(phone);
		vo.setMemberBirth(bd);
		//System.out.println("회원가입 정보 받기 : " + vo);
		
		if (service.createUserCreate(vo)) {
			return "mainPage.do";
		} else {
			return "createUserPage.do";
		}
	}

}
