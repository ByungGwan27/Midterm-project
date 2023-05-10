package jayk.hotelinfo.control;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;

public class AdminModifyHotelInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HotelInfoService service = new HotelInfoServiceImpl();

		if (req.getMethod().equals("GET")) {
			String hotelId = req.getParameter("hotelId");
			HotelInfoVO adminHotelInfo = service.getAdminHotel(Integer.parseInt(hotelId));
			// System.out.println(adminHotelInfo);
			req.setAttribute("adminHotelInfo", adminHotelInfo);

			// String roomId = req.getParameter("roomId");
			List<HotelInfoVO> adminRoomList = service.roomList(Integer.parseInt(hotelId));
			req.setAttribute("adminRoomList", adminRoomList);

			return "adminpage/adminHotelInfoModify.tiles";

		} else if (req.getMethod().equals("POST")) {
			HotelInfoVO admimModifyHotel = new HotelInfoVO();

			String hotelId = req.getParameter("hotelId");
			String hotelName = req.getParameter("hotelName");
			String hotelLocation1 = req.getParameter("hotelLocation1");
			String hotelLocation2 = req.getParameter("hotelLocation2");

			admimModifyHotel.setHotelId(Integer.parseInt(hotelId));
			admimModifyHotel.setHotelName(hotelName);
			admimModifyHotel.setHotelLocation1(hotelLocation1);
			admimModifyHotel.setHotelLocation2(hotelLocation2);

			service.modifyAdminHotel(admimModifyHotel);
			// 여기까진됨ㅇㅇ

			// 여기서부터객실정보수정
			String roomId = req.getParameter("roomId");

			//List<HotelInfoVO> updateHotelRoom = service.roomList(Integer.parseInt(hotelId));
				admimModifyHotel = new HotelInfoVO();
				String roomName = req.getParameter("roomName");
				String roomExpain = req.getParameter("roomExpain");
				String roomGrade = req.getParameter("roomGrade");
				String roomPrice = req.getParameter("roomPrice");
				String roomMax = req.getParameter("roomMax");
				String roomMin = req.getParameter("roomMin");
				String addPrice = req.getParameter("addPrice");

				admimModifyHotel.setHotelId(Integer.parseInt(hotelId));
				admimModifyHotel.setRoomId(Integer.parseInt(roomId));
				admimModifyHotel.setRoomName(roomName);
				admimModifyHotel.setRoomExpain(roomExpain);
				admimModifyHotel.setRoomGrade(roomGrade);
				admimModifyHotel.setRoomPrice(Integer.parseInt(roomPrice));
				admimModifyHotel.setRoomMax(Integer.parseInt(roomMax));
				admimModifyHotel.setRoomMin(Integer.parseInt(roomMin));
				admimModifyHotel.setAddPrice(Integer.parseInt(addPrice));

					service.modifyAdminHotelRoom(admimModifyHotel);

					return "adminHotelList.do";
			}

		return null;
	}

}
