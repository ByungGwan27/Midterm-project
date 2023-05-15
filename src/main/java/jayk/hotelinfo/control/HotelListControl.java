package jayk.hotelinfo.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.hotelinfo.domain.ConditionDTO;
import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;

public class HotelListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String pageStr = req.getParameter("page");
		pageStr = pageStr == null ? "1" : pageStr;
		int page = Integer.parseInt(pageStr);

		String hotelLocation1 = req.getParameter("hotelLocation1");
		String hotelThema = req.getParameter("hotelThema");
		String roomMax = req.getParameter("roomMax");
		String roomMin = req.getParameter("roomMin");
		String roomPrice = req.getParameter("roomPrice");
		// System.out.println(hotelThema);

		HotelInfoService service = new HotelInfoServiceImpl();
		int total = service.totalCount();
		// List<HotelInfoVO> hotelList = service.hotelList(page);
		List<HotelInfoVO> navListLoca = service.navListLoca();
		List<HotelInfoVO> navListThema = service.navListThema();
		List<HotelInfoVO> hotelList = null;// service.hotelList(page);
//		List<HotelInfoVO> hotelList = 
//		service.filteredList(hotelLocation1, hotelThema, Integer.parseInt(roomPrice), Integer.parseInt(roomMax), Integer.parseInt(roomMin));
//		PageDTO dto = new PageDTO(page, total);
//		location, theme, price=> 0 ~ 10000000000, room=>0~100

		ConditionDTO condto = new ConditionDTO();
		condto.setLocation(hotelLocation1);
		condto.setTheme(hotelThema);
		if (roomPrice != null) {
			condto.setMinPrice(Integer.parseInt(roomPrice) - 20000);
			condto.setMaxRoom(Integer.parseInt(roomPrice) + 30000);
		} else {
			condto.setMinPrice(0);
			condto.setMaxPrice(1000000000);
		}

		if (roomMax != null && roomMin != null) {
			condto.setMaxRoom(Integer.parseInt(roomMax));
			condto.setMinRoom(Integer.parseInt(roomMin));
		} else {
			condto.setMaxRoom(100);
			condto.setMinRoom(0);
		}

		System.out.println(condto);
		hotelList = service.hotelList(condto);

		req.setAttribute("hotelList", hotelList);
		// req.setAttribute("pageInfo", dto);
		req.setAttribute("navListLoca", navListLoca);
		req.setAttribute("navListThema", navListThema);
		// System.out.println(hotelList);
		// System.out.println(navListLoca);
		// System.out.println(navListThema);

		return "hotelinfopage/hotelListPage.tiles";

	}
}
