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

public class AdminAddExtraRoomControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String saveDir = req.getServletContext().getRealPath("images");
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
		String imageId = multi.getParameter("imageId");
		String image = multi.getFilesystemName("image");
		
		String parking = multi.getParameter("parking");
		parking = (parking == null) ? "2" : "1";
		String wifi = multi.getParameter("wifi");
		wifi = (wifi == null) ? "2" : "1";
		String pet = multi.getParameter("pet");
		pet = (pet == null) ? "2" : "1";
		String pool = multi.getParameter("pool");
		pool = (pool == null) ? "2" : "1";
		String singleRoom = multi.getParameter("roomType");
		singleRoom = (singleRoom != null && singleRoom.equals("singleRoom")) ? "1" : "2";
		String twinRoom = multi.getParameter("roomType");
		twinRoom = (twinRoom != null && twinRoom.equals("twinRoom")) ? "1" : "2";
		String doubleRoom = multi.getParameter("roomType");
		doubleRoom = (doubleRoom != null && doubleRoom.equals("doubleRoom")) ? "1" : "2";
		String tripleRoom = multi.getParameter("roomType");
		tripleRoom = (tripleRoom != null && tripleRoom.equals("tripleRoom")) ? "1" : "2";
		String breakfast = multi.getParameter("breakfast");
		breakfast = (breakfast == null) ? "2" : "1";
		
	
		HotelInfoVO addRoom = new HotelInfoVO();
		addRoom.setHotelId(Integer.parseInt(hotelId));
		addRoom.setRoomId(Integer.parseInt(roomId));
		addRoom.setRoomName(roomName);
		addRoom.setRoomPrice(Integer.parseInt(roomPrice));
		addRoom.setRoomMax(Integer.parseInt(roomMax));
		addRoom.setRoomMin(Integer.parseInt(roomMin));
		addRoom.setAddPrice(Integer.parseInt(addPrice));
		addRoom.setImageId(Integer.parseInt(imageId));
		addRoom.setImage(image);
		addRoom.setParking(Integer.parseInt(parking));
		addRoom.setWifi(Integer.parseInt(wifi));
		addRoom.setPet(Integer.parseInt(pet));
		addRoom.setPool(Integer.parseInt(pool));
		addRoom.setSingleRoom(Integer.parseInt(singleRoom));
		addRoom.setTwinRoom(Integer.parseInt(twinRoom));
		addRoom.setDoubleRoom(Integer.parseInt(doubleRoom));
		addRoom.setTripleRoom(Integer.parseInt(tripleRoom));
		addRoom.setBreakfast(Integer.parseInt(breakfast));
		
		HotelInfoService service = new HotelInfoServiceImpl();
				
		if(service.addAdminRoom(addRoom) && service.addAdminRoomImage(addRoom) && service.addAdminRoomDetail(addRoom)) {
			//System.out.println("성공");
			return "adminHotelList.do";
		}else {
			
			return "adminHotelList.do";
		}
	}
		
}
