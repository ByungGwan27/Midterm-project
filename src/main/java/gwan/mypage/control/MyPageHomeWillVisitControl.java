package gwan.mypage.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageHomeWillVisitControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String memberId = req.getParameter("memberId");
		MyPageService service = new MyPageServiceImpl();
		List<MyPageVO> list = service.willVisit(memberId);
		
		String json="[";
		for (int i=0; i<list.size();i++) {
			json += "{\"hotelName\":\""+list.get(i).getHotelName()+"\",";
			json += "\"hotelLocation1\":\""+list.get(i).getHotelLocation1()+"\",";
			json += "\"hotelLocation2\":\"" + list.get(i).getHotelLocation2() + "\",";
			json += "\"checkinDate\":" + list.get(i).getCheckinDate() + ",";
			json += "\"checkoutDate\":" + list.get(i).getCheckoutDate() + ",";
			json += "\"hotelPhone\":\"" + list.get(i).getHotelPhone() + "\",";
			json += "\"roomName\":" + list.get(i).getRoomName() + "}";
			
			if (i + 1 != list.size()) {
				json += ",";
			}
		}
		
		json += "]";
		return json+".json";
	}

}
