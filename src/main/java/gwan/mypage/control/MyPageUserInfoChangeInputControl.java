package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;

public class MyPageUserInfoChangeInputControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String nickname = req.getParameter("nickname");
		String thema = req.getParameter("thema");
		String pw = req.getParameter("pw");
		
		
		
		
		return "logout.do";
	}

}
