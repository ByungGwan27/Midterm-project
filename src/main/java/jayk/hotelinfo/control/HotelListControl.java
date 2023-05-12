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

import main.common.control.PageDTO;

public class HotelListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		/*
		 * String pageStr = req.getParameter("page"); pageStr = pageStr == null ? "1" :
		 * pageStr; int page = Integer.parseInt(pageStr);
		 */

		//System.out.println(pageStr);
		
		String hotelLocation1 = req.getParameter("hotelLocation1");
		String hotelThema = req.getParameter("hotelThema");
		String roomMax = req.getParameter("roomMax");
		String roomMin = req.getParameter("roomMin");
		String roomPrice = req.getParameter("roomPrice");
		System.out.println(hotelThema);
		
		HotelInfoService service = new HotelInfoServiceImpl();
		int total = service.totalCount();
		List<HotelInfoVO> hotelList = service.hotelList();
		List<HotelInfoVO> navListLoca = service.navListLoca();
		List<HotelInfoVO> navListThema = service.navListThema();
		
		//PageDTO dto = new PageDTO(page, total);
		//req.setAttribute("pageInfo", dto);
		System.out.println("1번"+hotelList);
		System.out.println("1번"+navListLoca);
		System.out.println("1번"+navListThema);
		
		if (hotelLocation1 != null) {
			hotelList = service.hotelListLoca(hotelLocation1);
		} else if (hotelThema != null) {
			hotelList = service.hotelListThema(hotelThema);
		} else if (roomMax != null && roomMin != null) {
			hotelList = service.hotelListNum(Integer.parseInt(roomMax), Integer.parseInt(roomMin));
		}else if(roomPrice != null) {
			hotelList = service.hotelListPrice(Integer.parseInt(roomPrice));
		}else {
			hotelList = service.hotelList();
		}

	
		req.setAttribute("hotelList", hotelList);
		req.setAttribute("navListLoca", navListLoca);
		req.setAttribute("navListThema", navListThema);
		System.out.println(hotelList);
		System.out.println(navListLoca);
		System.out.println(navListThema);
		
		return "hotelinfopage/hotelListPage.tiles";

	}
}
