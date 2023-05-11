package jayk.hotelinfo.control;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;

public class AdminAddRoomControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String saveDir = req.getServletContext().getRealPath("cssMainpage/images");
		 int maxSize = 5 * 1024 * 1024; //5mb 
		 String encoding = "UTF-8"; 
		 DefaultFileRenamePolicy rn = new DefaultFileRenamePolicy();
		 MultipartRequest multi = new MultipartRequest(req, saveDir, maxSize, encoding, rn);
		 
		 Enumeration<?> enu = multi.getFileNames();
		 while(enu.hasMoreElements()) {
			 String file =(String) enu.nextElement();
			 System.out.println("file : " + file);
		 }
	
		String hotelId = multi.getParameter("hotelId");
		String roomId = multi.getParameter("roomId");
		String roomName = multi.getParameter("roomName");
		String roomPrice = multi.getParameter("roomPrice");
		String roomMax = multi.getParameter("roomMax");
		String roomMin = multi.getParameter("roomMin");
		String addPrice = multi.getParameter("addPrice");
		
		HotelInfoVO addRoom = new HotelInfoVO();
		addRoom.setHotelId(Integer.parseInt(hotelId));
		addRoom.setRoomId(Integer.parseInt(roomId));
		addRoom.setRoomName(roomName);
		addRoom.setRoomPrice(Integer.parseInt(roomPrice));
		addRoom.setRoomMax(Integer.parseInt(roomMax));
		addRoom.setRoomMin(Integer.parseInt(roomMin));
		addRoom.setAddPrice(Integer.parseInt(addPrice));
		
		HotelInfoService service = new HotelInfoServiceImpl();
				
		if(service.addAdminRoom(addRoom)) {
			System.out.println("성공");
			return "adminHotelList.do";
		}else {
			return "adminAddHotelPage.do";
		}
	}

}
