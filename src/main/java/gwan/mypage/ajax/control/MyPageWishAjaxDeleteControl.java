package gwan.mypage.ajax.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageWishAjaxDeleteControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String wlId = req.getParameter("wlId");
		MyPageService service = new MyPageServiceImpl();
		String json = "";
		
		//선택삭제용
		String[] ss = req.getParameterValues("id");
		if(ss != null) {
			
			for (int i = 0; i < ss.length; i++) {
				service.deleteWishList(Integer.parseInt(ss[i]));
			}
			
			return "myPageWishList.do";
			
		}
		
		if (service.deleteWishList(Integer.parseInt(wlId))) {
			json = "{\"retCode\":\"Success\"}";
		} else {
			json = "{\"retCode\":\"Fail\"}";
		}
		
		return json + ".json";
	}

}
