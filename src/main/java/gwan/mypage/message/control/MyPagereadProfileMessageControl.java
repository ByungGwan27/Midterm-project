package gwan.mypage.message.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPagereadProfileMessageControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		MyPageService service = new MyPageServiceImpl();
		List<MyPageVO> list = service.readProfileMessage(id);
		
		String json="[";
		for (int i=0; i<list.size();i++) {
			json += "{\"memberNickname\":\""+list.get(i).getMemberNickname()+"\",";
			json += "\"memberProfile\":\""+list.get(i).getMemberProfile()+"\",";
			json += "\"messageId\":\""+list.get(i).getMessageId()+"\",";
			json += "\"memberId\":\""+list.get(i).getMemberId()+"\",";
			json += "\"messageContent\":\""+list.get(i).getMessageContent()+"\",";
			json += "\"messageImg\":\""+list.get(i).getMessageImg()+"\",";
			json += "\"messageDate\":\""+list.get(i).getMessageDate()+"\",";
			json += "\"messageCheck\":\""+list.get(i).getMessageCheck()+"\",";
			json += "\"messageDelete\":\"" + list.get(i).getMessageDelete() + "\"}";
			
			if (i + 1 != list.size()) {
				json += ",";
			}
		}
		json += "]";
		return json + ".json";
	}

}
