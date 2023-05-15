package gwan.loginpage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.common.control.Control;

public class loginPageControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String prevUrl = req.getHeader("Referer"); // 이전 페이지 URL 가져오기
		session.setAttribute("prevUrl", prevUrl); //세션에 저장
		System.out.println("첫 주소 테스트" + prevUrl);
		return "gwanLoginPage/loginPage.tiles";
	}

}
