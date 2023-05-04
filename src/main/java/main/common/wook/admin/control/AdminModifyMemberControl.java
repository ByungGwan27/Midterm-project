package main.common.wook.admin.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;
import main.common.wook.main.domain.MemberVO;

public class AdminModifyMemberControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberVO member =new MemberVO();
		
		member.setMemberId(req.getParameter("memberId"));
		member.setMemberPw(req.getParameter("memberPw"));
		member.setMemberName(req.getParameter("memberName"));
		member.setMemberBirth(req.getParameter("memberBirth"));
		member.setMemberEmail(req.getParameter("memberEmail"));
		member.setMemberPhone(req.getParameter("memberPhone"));
		member.setMemberStatus(req.getParameter("memberStatus"));
		member.setMemberNickname(req.getParameter("memberNickname"));
		member.setMemberProfile(req.getParameter("memberProfile"));
		member.setMemberPoint(Integer.parseInt(req.getParameter("memberPoint")));
		member.setMemberThema(req.getParameter("memberThema"));
		member.setMemberJoindate(java.sql.Date.valueOf(req.getParameter("memberJoindate")));
		member.setMemberGrade(Integer.parseInt(req.getParameter("memberGrade")));
		
		System.out.println(member);
		
		AdminService service = new AdminServiceImpl();
		int result = service.modifyMemberInfo(member);
		
		System.out.println("result="+result);
		
		if(result==1) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		return "adminMemberInfo.do?id="+req.getParameter("memberId");
		
	}

}
