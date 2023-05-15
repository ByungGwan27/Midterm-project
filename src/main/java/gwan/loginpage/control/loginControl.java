package gwan.loginpage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
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
		String checkbox = req.getParameter("checkbox");
		
		LoginPageVO vo = new LoginPageVO();
		vo.setMemberId(id);
		vo.setMemberPw(pw);
		
		// 아이디 기억하기
		Cookie cookie = new Cookie("userId", id);
		
		//System.out.println("쿠키" + checkbox);
		if (checkbox != null) { // 체크박스 체크여부에 따라 쿠키 저장 확인
			// 체크박스 체크 되었을 때
			// 쿠키 저장
			resp.addCookie(cookie);
		} else {
			// 체크박스 체크 해제되었을 때
			// 쿠키 유효시간 0으로 해서 브라우저에서 삭제하게 한다.
			cookie.setMaxAge(0);
			resp.addCookie(cookie);
		}
		
		LoginPageService service = new LoginPageServiceImpl();
		vo = service.loginCheck(vo);
		//System.out.println("유저 정보 : " + vo);
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
			System.out.println(prevUrl);
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
