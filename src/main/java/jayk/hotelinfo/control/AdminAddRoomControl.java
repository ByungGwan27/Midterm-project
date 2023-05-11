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
		String imageId = multi.getParameter("imageId");
		String image = multi.getFilesystemName("image");
		
		String parking = multi.getParameter("parking");
		parking = (parking == null) ? "2" : parking;
		String wifi = multi.getParameter("wifi");
		wifi = (wifi == null) ? "2" : wifi;
		String pet = multi.getParameter("pet");
		pet = (pet == null) ? "2" : pet;
		String pool = multi.getParameter("pool");
		pool = (pool == null) ? "2" : pool;
		String singleRoom = multi.getParameter("singleRoom");
		singleRoom = (singleRoom == null) ? "2" : singleRoom;
		String twinRoom = multi.getParameter("twinRoom");
		twinRoom = (twinRoom == null) ? "2" : twinRoom;
		String doubleRoom = multi.getParameter("doubleRoom");
		doubleRoom = (doubleRoom == null) ? "2" : doubleRoom;
		String tripleRoom = multi.getParameter("tripleRoom");
		tripleRoom = (tripleRoom == null) ? "2" : tripleRoom;
		String breakfast = multi.getParameter("breakfast");
		breakfast = (breakfast == null) ? "2" : breakfast;
		
	
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
			System.out.println("성공");
			return "adminHotelList.do";
		}else {
			return "adminAddHotelPage.do";
		}
	}

}
