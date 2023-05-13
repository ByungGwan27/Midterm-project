package main.common.wook.pay.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;
import main.common.wook.main.domain.HotelVO;
import main.common.wook.main.service.MainService;
import main.common.wook.main.service.MainServiceImpl;

public class mainHotelInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String location = req.getParameter("location");
		
		String date = req.getParameter("daterange");
		
		System.out.println(date);
		
		int people = Integer.parseInt(req.getParameter("people"));
		String inDate = date.substring(0, 10);
		String outDate = date.substring(13, 23);
		// 입력 될 날짜
		String checkin = date.substring(8, 10)+"/"  + date.substring(0, 2) + date.substring(2, 5);
		String checkout = outDate.substring(8, 10)+"/"  + outDate.substring(0, 2) + outDate.substring(2, 5);
		MainService service = new MainServiceImpl();
		
		HotelVO hotel = new HotelVO();
		hotel.setPeople(people);
		hotel.setCheckinDate(checkin);
		hotel.setCheckoutDate(checkout);
		hotel.setHotelLocation1(location);
		
		List<HotelVO> list = service.selectHotelList(hotel);

		req.setAttribute("hotelList", list);
		
		HotelInfoService service1 = new HotelInfoServiceImpl();
		List<HotelInfoVO> navListLoca = service1.navListLoca();
		List<HotelInfoVO> navListThema = service1.navListThema();
		req.setAttribute("navListLoca", navListLoca);
		req.setAttribute("navListThema", navListThema);
		
		return "hotelinfopage/hotelListPage.tiles";
	}

}
