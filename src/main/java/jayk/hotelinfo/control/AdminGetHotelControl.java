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

public class AdminGetHotelControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String hotelId = req.getParameter("hotelId");
		HotelInfoService service = new HotelInfoServiceImpl();

		// 숙소개별정보
		HotelInfoVO adminHotelInfo = service.getAdminHotel(Integer.parseInt(hotelId));
		req.setAttribute("adminHotelInfo", adminHotelInfo);
		// System.out.println(adminHotelInfo);

		// 상세객실리스트
//		List<HotelInfoVO> adminRoomList = service.roomList(Integer.parseInt(hotelId));
//		HotelInfoVO adminHotelRoom = service.getAdminHotelRoom(Integer.parseInt(hotelId), Integer.parseInt(roomId));
//		for (int i = 0; i < adminRoomList.size(); i++) {
//			adminRoomList.set(i, adminHotelRoom);
//		}
//		req.setAttribute("adminRoomList", adminRoomList);
		//System.out.println("adminRoomList : " + adminRoomList);
		

		return "adminpage/adminGetHotelInfo.tiles";
	}

}
