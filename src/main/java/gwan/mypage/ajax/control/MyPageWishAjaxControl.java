package gwan.mypage.ajax.control;

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

public class MyPageWishAjaxControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		MyPageService service = new MyPageServiceImpl();
		List<MyPageVO> list = service.readWishList((String) session.getAttribute("id"));
		
		
		String json="[";
		for (int i=0; i<list.size();i++) {
			json += "{\"hotelName\":\""+list.get(i).getHotelName()+"\",";
			json += "\"hotelLocation1\":\""+list.get(i).getHotelLocation1()+"\",";
			json += "\"hotelLocation2\":\"" + list.get(i).getHotelLocation2() + "\",";
			json += "\"HotelThema\":\"" + list.get(i).getHotelThema() + "\",";
			json += "\"RoomPrice\":" + list.get(i).getRoomPrice() + "}";
			
			if (i + 1 != list.size()) {
				json += ",";
			}
		}
		
		json += "]";
		System.out.println("wjson테스트 : "+ json);
		return json+".json";
		
		
		
		
//		return "mypage/myPageWishList.tiles";
	}

}
