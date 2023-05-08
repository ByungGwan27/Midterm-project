package gwan.mypage.control;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageUserInfoChangeInputControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//사진 업로드
		String saveDir = req.getServletContext().getRealPath("images");
		
		int maxSize = 5 * 1024 * 1024;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy rn = new DefaultFileRenamePolicy();
		MultipartRequest multi
				= new MultipartRequest(req, saveDir, maxSize, encoding, rn);
		
		Enumeration<?> enu = multi.getFileNames();
		while (enu.hasMoreElements()) {
			String file = (String) enu.nextElement();
			System.out.println("file: " + file);
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
		
		
		
		MyPageVO vo = new MyPageVO();
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
		System.out.println(cinfo);
		if(cinfo && vo.getMemberPw().length() > 4) {
			return "logout.do";
		} else if (cinfo){
			return "myPageHome.do";
		} else {
			return "myPageUserInfoChange.do";
		}
		
	}

}
