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

public class AdminModifyHotelInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HotelInfoService service = new HotelInfoServiceImpl();
		
		if(req.getMethod().equals("GET")) {
			String hotelId = req.getParameter("hotelId");
			HotelInfoVO adminHotelInfo = service.getAdminHotel(Integer.parseInt(hotelId));
			//System.out.println(adminHotelInfo);
			req.setAttribute("adminHotelInfo", adminHotelInfo);
			
			return "adminpage/adminHotelInfoModify.tiles";
			
		}else if(req.getMethod().equals("POST")) {
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
			
			return "adminHotelList.do";
		}
			
		return null;
	}

}
