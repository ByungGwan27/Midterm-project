package gwan.mypage.message.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPagecreateMessageControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println("메세지를 생성하자");
		System.out.println(id);
		String id2 = req.getParameter("memberId2");
		System.out.println(id2);
		String mC = req.getParameter("content");
		System.out.println(mC);
		int mT = Integer.parseInt(req.getParameter("th"));
		System.out.println(mT);
		int mT2 = Integer.parseInt(req.getParameter("mm"));
		System.out.println(mT2);
		String apm = req.getParameter("apm");
		System.out.println(apm);
		
		MyPageVO vo = new MyPageVO();
		MyPageService service = new MyPageServiceImpl();
		
		vo.setMemberId(id);
		vo.setMessageContent(mC);
		vo.setMemberId2(id2);
		vo.setMessageTime(mT);
		vo.setMessageTime2(mT2);
		vo.setMessageApm(apm);
		
		boolean result = service.createMessage(vo);

		String json = "";
		
		Map<String, Object> map = new HashMap<>();
		
		if(result) {
			map.put("retCode", "Success");
			map.put("ddata", vo);
			
		} else {
			map.put("retCode", "Fail");
		}
		
		Gson gson = new GsonBuilder().create();
		json = gson.toJson(map);
		
		return json + ".json";
	}

}
