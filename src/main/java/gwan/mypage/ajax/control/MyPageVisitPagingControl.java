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

public class MyPageVisitPagingControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		
		//페이징 작업
		String pageStr = req.getParameter("page");
		pageStr = pageStr == null ? "1" : pageStr;
		int page = Integer.parseInt(pageStr);
		
		MyPageService service = new MyPageServiceImpl();
		List<MyPageVO> list = service.visiting(id, page);
		
		String json="[";
		for (int i=0; i<list.size();i++) {
			json += "{\"hotelName\":\""+list.get(i).getHotelName()+"\",";
			json += "\"locationDetail\":\""+list.get(i).getLocationDetail()+"\",";
			json += "\"checkinDate\":\"" + list.get(i).getCheckinDate() + "\",";
			json += "\"checkoutDate\":\"" + list.get(i).getCheckoutDate() + "\",";
			json += "\"hotelPhone\":\"" + list.get(i).getHotelPhone() + "\",";
			json += "\"reservationId\":\"" + list.get(i).getReservationId() + "\",";
			json += "\"roomName\":\"" + list.get(i).getRoomName() + "\",";
			json += "\"hotelLocation1\":\"" + list.get(i).getRoomName() + "\",";
			json += "\"hotelId\":\"" + list.get(i).getHotelId() + "\"}";
			
			if (i + 1 != list.size()) {
				json += ",";
			}
		}
		
		json += "]";
		return json+".json";
	}

}
