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
		HotelInfoService service = new HotelInfoServiceImpl();
		
		List<HotelInfoVO> adminRoomList = service.roomList(Integer.parseInt(hotelId));
		req.setAttribute("adminRoomList", adminRoomList);
		
		return "adminpage/adminGetRoomInfo.tiles";
	}

}
