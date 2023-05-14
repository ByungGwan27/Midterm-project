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

public class MyPagereadMessageControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		String id2 = req.getParameter("memberId2");
		MyPageService service = new MyPageServiceImpl();
		List<MyPageVO> list = service.readMessage(id, id2);
		String json="[";
		for (int i=0; i<list.size();i++) {
			json += "{\"messageId\":\"" + list.get(i).getMessageId() + "\",";
		    json += "\"memberId\":\"" + list.get(i).getMemberId() + "\",";
		    json += "\"memberId2\":\"" + list.get(i).getMemberId2() + "\",";
		    json += "\"messageContent\":\"" + list.get(i).getMessageContent() + "\",";
		    json += "\"messageImg\":\"" + list.get(i).getMessageImg() + "\",";
		    json += "\"messageDate\":\"" + list.get(i).getMessageDate() + "\",";
		    json += "\"messageCheck\":\"" + list.get(i).getMessageCheck() + "\",";
		    json += "\"messageDelete\":\"" + list.get(i).getMessageDelete() + "\",";
		    json += "\"messageTime\":\"" + list.get(i).getMessageTime() + "\",";
		    json += "\"messageTime2\":\"" + list.get(i).getMessageTime2() + "\",";
		    json += "\"messageApm\":\"" + list.get(i).getMessageApm() + "\"}";
			
			if (i + 1 != list.size()) {
				json += ",";
			}
		}
		
		json += "]";
		return json + ".json";
	}

}
