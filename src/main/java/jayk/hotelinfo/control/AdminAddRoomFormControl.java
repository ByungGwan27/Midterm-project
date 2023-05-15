
package jayk.hotelinfo.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;

public class AdminAddRoomFormControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String hotelId = req.getSession().getAttribute("generatedHotelId").toString();
		HotelInfoService service = new HotelInfoServiceImpl();
		
		HotelInfoVO adminAddRoom = service.getAdminHotel(Integer.parseInt(hotelId));
		req.setAttribute("adminAddRoom", adminAddRoom);
		
		return "adminpage/adminRoomAddPage.tiles";
	}

}

