package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.common.control.Control;

public class MyPageUserInfoPwInputControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String datapw = (String) session.getAttribute("pw");
		String inputpw = req.getParameter("pw");
		boolean pwc = inputpw.equals(datapw); 
		
		if(pwc) {
			return "myPageUserInfoChange.do";
		}
		return "myPageUserInfoPw.do";
	}
}
