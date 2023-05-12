package jayk.hotelinfo.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;

public class AdminGetRoomControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String hotelId = req.getParameter("hotelId");
		String roomId = req.getParameter("roomId");
		HotelInfoService service = new HotelInfoServiceImpl();
		
		HotelInfoVO adminRoomInfo = service.getAdminHotelRoom(Integer.parseInt(hotelId), Integer.parseInt(roomId));
		req.setAttribute("adminRoomInfo", adminRoomInfo);
		//System.out.println(adminRoomInfo);
		
		return "adminpage/adminGetRoomInfo.tiles";
	}

}
