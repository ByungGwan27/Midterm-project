package gwan.mypage.control;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import gwan.loginpage.domain.LoginPageVO;
import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageUserInfoChangeInputControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//사진 업로드
		String saveDir = req.getServletContext().getRealPath("images");
		System.out.println(saveDir);
		//System.out.println("저장위치" + saveDir);
		int maxSize = 5 * 1024 * 1024;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy rn = new DefaultFileRenamePolicy();
		MultipartRequest multi
				= new MultipartRequest(req, saveDir, maxSize, encoding, rn);
		
		Enumeration<?> enu = multi.getFileNames();
		while (enu.hasMoreElements()) {
			String file = (String) enu.nextElement();
			//System.out.println("file: " + file);
		}
		
		String email = multi.getParameter("email");
		String phone = multi.getParameter("phone");
		String nickname = multi.getParameter("nickname");
		String thema = multi.getParameter("thema");
		String pw = multi.getParameter("pw");
		String attach = multi.getFilesystemName("attach");
		
		//id값
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		
//		Member member = memberService.getMemberById(memberId);
//
//		// 회원 정보가 변경된 경우 세션 값을 갱신합니다.
//		session.setAttribute("member", member);
		
		
		
		LoginPageVO vo = new LoginPageVO();
		vo.setMemberProfile(attach);
		vo.setMemberEmail(email);
		vo.setMemberPhone(phone);
		vo.setMemberNickname(nickname);
		vo.setMemberThema(thema);
		vo.setMemberPw(pw);
		vo.setMemberId(id);
		
		MyPageService service = new MyPageServiceImpl();
		System.out.println("정보수정 테스트"+vo);
		boolean cinfo = service.updateMemberInfo(vo);
		//System.out.println(cinfo);
		
		//비밀번호 입력 안하고 설정했을때
		
		//비밀번호 입력했을때 글자수 제한
		boolean pwC = vo.getMemberPw() != null && !vo.getMemberPw().isEmpty(); //뒤에 글자수 길이만큼 length 제한두기
		
		boolean attachC = vo.getMemberProfile() != null && !vo.getMemberProfile().isEmpty();
		boolean emailC = vo.getMemberEmail() != null && !vo.getMemberEmail().isEmpty();
		boolean phoneC = vo.getMemberPhone() != null && !vo.getMemberPhone().isEmpty();
		boolean nicknameC = vo.getMemberNickname() != null && !vo.getMemberNickname().isEmpty();
		boolean themaC = vo.getMemberThema() != null && !vo.getMemberThema().isEmpty();
		
		//검증 후 페이지 이동
		boolean[] conditions = {pwC, attachC, emailC, phoneC, nicknameC, themaC};
		String[] sessionAttributes = {"pw", "profile", "email", "phone", "nickname", "thema"};

		if (cinfo) {
		    for (int i = 0; i < conditions.length; i++) {
		        if (conditions[i]) {
		            session.setAttribute(sessionAttributes[i], getSessionValue(vo, i));
		        }
		    }
		    if (conditions[0]) {
		    	return "logout.do";
		    }
		    return "myPageHome.do";
		} else {
		    return "myPageUserInfoChange.do";
		}

	}
	
	
	private String getSessionValue(LoginPageVO vo, int i) {
		switch(i) {
		case 0:
			return vo.getMemberPw();
		case 1:
			return vo.getMemberProfile();
		case 2:
			return vo.getMemberEmail();
		case 3:
			return vo.getMemberPhone();
		case 4:
			return vo.getMemberNickname();
		case 5:
			return vo.getMemberThema();
		default:
			return null;
		}
	}

}
