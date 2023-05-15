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

		} else if (req.getMethod().equals("POST")) {

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

			boolean isSingleRoomChecked = req.getParameter("roomType").equals("singleRoom");
			boolean isTwinRoomChecked = req.getParameter("roomType").equals("twinRoom");
			boolean isDoubleRoomChecked = req.getParameter("roomType").equals("doubleRoom");
			boolean isTripleRoomChecked = req.getParameter("roomType").equals("tripleRoom");
			String parking = req.getParameter("parking");
			String wifi = req.getParameter("wifi");
			String pet = req.getParameter("pet");
			String pool = req.getParameter("pool");
			String breakfast = req.getParameter("breakfast");
			
			adminModifyRoom.setSingleRoom(isSingleRoomChecked ? 1 : 2);
			adminModifyRoom.setTwinRoom(isTwinRoomChecked ? 1 : 2);
			adminModifyRoom.setDoubleRoom(isDoubleRoomChecked ? 1 : 2);
			adminModifyRoom.setTripleRoom(isTripleRoomChecked ? 1 : 2);
			
			adminModifyRoom.setParking(Integer.parseInt(parking != null ? "1" : "2"));
			adminModifyRoom.setWifi(Integer.parseInt(wifi != null ? "1" : "2"));
			adminModifyRoom.setPet(Integer.parseInt(pet != null ? "1" : "2"));
			adminModifyRoom.setPool(Integer.parseInt(pool != null ? "1" : "2"));
			adminModifyRoom.setBreakfast(Integer.parseInt(breakfast != null ? "1" : "2"));

			if (service.modifyAdminHotelRoom(adminModifyRoom) && service.modifyAdiminHotelRoomDetail(adminModifyRoom)) {
				// System.out.println("성공");
				return "adminHotelList.do";
			} else {
				System.out.println("실패");
				return "adminHotelList.do";
			}

		}
		return null;

	}
}
