package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageHomeDelWillVisitControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageService service = new MyPageServiceImpl();
		
		String[] ss = req.getParameterValues("id");
		if(ss != null) {
			System.out.println("ss값을 찾아서"+Integer.parseInt(ss[0]));
			
			for (int i = 0; i < ss.length; i++) {
				service.deleteWillVisit(Integer.parseInt(ss[i]));
			}
			
			return "myPageHome.do";
			
		}
		
		// 삭제 버튼 누를시 삭제
		String wvId = req.getParameter("wvId");
		String json = "";

		if (service.deleteWillVisit(Integer.parseInt(wvId))) {
			json = "{\"retCode\":\"Success\"}";
		} else {
			json = "{\"retCode\":\"Fail\"}";
		}
		
		return json + ".json";
		
	}

}
