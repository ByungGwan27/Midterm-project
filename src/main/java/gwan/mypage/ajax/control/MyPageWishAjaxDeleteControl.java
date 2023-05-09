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
		MyPageService service = new MyPageServiceImpl();
		//선택삭제용(선택된 길이 만큼 반복문)
		String[] ss = req.getParameterValues("id");
		if(ss != null) {
			
			for (int i = 0; i < ss.length; i++) {
				service.deleteWishList(Integer.parseInt(ss[i]));
			}
			
			return "myPageWishList.do";
			
		}
		
		// 삭제 버튼 누를시 삭제
		String wlId = req.getParameter("wlId");
		String json = "";
		
		if (service.deleteWishList(Integer.parseInt(wlId))) {
			json = "{\"retCode\":\"Success\"}";
		} else {
			json = "{\"retCode\":\"Fail\"}";
		}
		
		return json + ".json";
	}

}
