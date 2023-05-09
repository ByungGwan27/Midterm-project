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
		System.out.println("유저 정보 : " + vo);
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
			
			String prevUrl = (String) session.getAttribute("prevUrl");
			
			// 첫 페이지에서 바로 로그인 화면 넘어가면 주소를 아래로 잡기 때문에 해당 구문 추가
			if (prevUrl.equals("http://localhost:8081/")) {
				//첫 페이지에 req로 값 넘겨준게 있어서 tiles로 돌아가면 req값이 사라져 null 오류가 뜨기 때문에 .do로 첫페이지 접속
				return "mainPage.do";
			} else {
				return prevUrl;
			}
			
		} else {
			return "gwanLoginPage/loginPage.tiles";
		}
		
	}


}
