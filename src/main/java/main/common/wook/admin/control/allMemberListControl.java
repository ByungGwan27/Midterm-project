package main.common.wook.admin.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.common.control.Control;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;
import main.common.wook.main.domain.MemberVO;

public class allMemberListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 AdminService service = new AdminServiceImpl(); List<MemberVO> list = service.allMemberInfo();
		 
		 String json="[";
			for (int i=0; i<list.size();i++) {
				json += "{\"MemberId\":\""+list.get(i).getMemberId()+"\",";
				json += "\"MemberPw\":\""+list.get(i).getMemberPw()+"\",";
				json += "\"MemberName\":\"" + list.get(i).getMemberName() + "\",";
				json += "\"MemberBirth\":\"" + list.get(i).getMemberBirth() + "\",";
				json += "\"MemberEmail\":\"" + list.get(i).getMemberEmail() + "\",";
				json += "\"MemberPhone\":\"" + list.get(i).getMemberPhone() + "\",";
				json += "\"MemberStatus\":\"" + list.get(i).getMemberStatus() + "\",";
				json += "\"MemberNickname\":\"" + list.get(i).getMemberNickname() + "\",";
				json += "\"MemberProfile\":\"" + list.get(i).getMemberProfile() + "\",";
				json += "\"MemberPoint\":" + list.get(i).getMemberPoint() + ",";
				json += "\"MemberThema\":\"" + list.get(i).getMemberThema() + "\",";
				json += "\"MemberJoindate\":\"" + list.get(i).getMemberJoindate() + "\",";
				json += "\"MemberGrade\":" + list.get(i).getMemberGrade() + "}";
				
				if (i + 1 != list.size()) {
					json += ",";
				}
			}
			
			json += "]";
			return json+".json";
	}

}
