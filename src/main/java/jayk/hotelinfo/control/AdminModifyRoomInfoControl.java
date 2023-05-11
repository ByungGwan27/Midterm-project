package jayk.hotelinfo.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;

public class AdminModifyRoomInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HotelInfoService service = new HotelInfoServiceImpl();
		
		if (req.getMethod().equals("GET")) {
			String hotelId = req.getParameter("hotelId");
			String roomId = req.getParameter("roomId");
			HotelInfoVO adminRoomInfo = service.getAdminHotelRoom(Integer.parseInt(hotelId), Integer.parseInt(roomId));
			req.setAttribute("adminRoomInfo", adminRoomInfo);
			
			return "adminpage/adminRoomInfoModify.tiles";
		
		}else if(req.getMethod().equals("POST")) {
			
			HotelInfoVO adminModifyRoom = new HotelInfoVO();
			
			String hotelId = req.getParameter("hotelId");
			String roomId = req.getParameter("roomId");
			String roomName = req.getParameter("roomName");
			String roomExpain = req.getParameter("roomExpain");
			String roomGrade = req.getParameter("roomGrade");
			String roomPrice = req.getParameter("roomPrice");
			String roomMin = req.getParameter("roomMin");
			String roomMax = req.getParameter("roomMax");
			String addPrice = req.getParameter("addPrice");
			
			adminModifyRoom.setHotelId(Integer.parseInt(hotelId));
			adminModifyRoom.setRoomId(Integer.parseInt(roomId));
			adminModifyRoom.setRoomName(roomName);
			adminModifyRoom.setRoomExpain(roomExpain);
			adminModifyRoom.setRoomGrade(roomGrade);
			adminModifyRoom.setRoomPrice(Integer.parseInt(roomPrice));
			adminModifyRoom.setRoomMin(Integer.parseInt(roomMin));
			adminModifyRoom.setRoomMax(Integer.parseInt(roomMax));
			adminModifyRoom.setAddPrice(Integer.parseInt(addPrice));
			
			service.modifyAdminHotelRoom(adminModifyRoom);
			
			return "adminHotelList.do";
		}
		
		return null;
	}

}
