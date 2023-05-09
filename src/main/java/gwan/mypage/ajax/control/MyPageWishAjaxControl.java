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
		//session 값 가져옴
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		// 가져온 값 쿼리문에 넣음
		MyPageService service = new MyPageServiceImpl();
		List<MyPageVO> list = service.readWishList(id);
		
		String json="[";
		for (int i=0; i<list.size();i++) {
			json += "{\"hotelName\":\""+list.get(i).getHotelName()+"\",";
			json += "\"hotelLocation1\":\""+list.get(i).getHotelLocation1()+"\",";
			json += "\"hotelLocation2\":\"" + list.get(i).getHotelLocation2() + "\",";
			json += "\"HotelThema\":\"" + list.get(i).getHotelThema() + "\",";
			json += "\"WishlistId\":\"" + list.get(i).getWishlistId() + "\",";
			json += "\"RoomPrice\":\"" + list.get(i).getRoomPrice() + "\"}";
			
			if (i + 1 != list.size()) {
				json += ",";
			}
		}
		
		json += "]";
		//System.out.println("json테스트"+json+"종료");
		return json + ".json";
		
	}

}
