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

public class AdminAddHotelControl implements Control {

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
		String hotelName = multi.getParameter("hotelName");
		String hotelLocation1 = multi.getParameter("hotelLocation1");
		String hotelLocation2 = multi.getParameter("hotelLocation2");
		String hotelImage = multi.getFilesystemName("hotelImage");
		String locationDetail = multi.getParameter("locationDetail");
		String hotelThema = multi.getParameter("hotelThema");
		
		HotelInfoVO addHotel = new HotelInfoVO();
		addHotel.setHotelId(Integer.parseInt(hotelId));
		addHotel.setHotelName(hotelName);
		addHotel.setHotelLocation1(hotelLocation1);
		addHotel.setHotelLocation2(hotelLocation2);
		addHotel.setHotelImage(hotelImage);
		addHotel.setLocationDetail(locationDetail);
		addHotel.setHotelThema(hotelThema);
		
		HotelInfoService service = new HotelInfoServiceImpl();
				
		if(service.addAdminHotel(addHotel)) {
			System.out.println("성공");
			int generatedHotelId = addHotel.getHotelId();
		    req.getSession().setAttribute("generatedHotelId", generatedHotelId);
			return "admimAddRoomForm.do?hotelId=" + generatedHotelId;
		}else {
			return "adminAddHotelPage.do";
		}
		
	}

}
