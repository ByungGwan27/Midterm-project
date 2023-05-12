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

public class HotelListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String hotelLocation1 = req.getParameter("hotelLocation1");
		String hotelThema = req.getParameter("hotelThema");
		
		HotelInfoService service = new HotelInfoServiceImpl();
		List<HotelInfoVO> hotelList = service.hotelList();
		List<HotelInfoVO> navListLoca = service.navListLoca();
		List<HotelInfoVO> navListThema = service.navListThema();
		
		if(hotelLocation1 != null) {
			hotelList = service.hotelListLoca(hotelLocation1);
		}else if(hotelThema != null) {
			hotelList = service.hotelListThema(hotelThema);
		}
		req.setAttribute("hotelList", hotelList);
		req.setAttribute("navListLoca", navListLoca);
		req.setAttribute("navListThema", navListThema);
		//String hotelLocation1 = req.getParameter("hotelLocation1");
	
		return "hotelinfopage/hotelListPage.tiles";
	}

}
