package main.common.frontcontrol;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.common.control.Control;
import main.common.wook.main.domain.HotelVO;
import main.common.wook.main.domain.MainVO;
import main.common.wook.main.service.MainService;
import main.common.wook.main.service.MainServiceImpl;

public class MainControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//메인페이지 회원수 조회
		MainService service = new MainServiceImpl();
		MainVO vo = service.memberCount();
		int count = vo.getMemberCount();
		
		req.setAttribute("memberCount", count);
		//예약수조회
		vo = service.reservationCount();
		int resCount = vo.getReservationCount();
		req.setAttribute("reservationCount", resCount);
		//숙소수조회
		vo = service.hotelCount();
		int hotCount = vo.getHotelCount();
		req.setAttribute("hotelCount", hotCount);
		//리뷰수조회
		vo = service.reviewCount();
		int revCount = vo.getReviewCount();
		req.setAttribute("reviewCount", revCount);
	
		
		
		//예약순 숙소 조회
		int index = 0;
		List<HotelVO> list = service.OrderResHotel();
		//System.out.println(list);
		for(HotelVO hotel : list) {
			int reshotelId =hotel.getHotelId();
			String reshotelName = hotel.getHotelName();
			String reshotelLocation = hotel.getHotelLocation1();
			String reshotelImage = hotel.getHotelImage();
			
			
			req.setAttribute("orderHotelId"+index, reshotelId);
			req.setAttribute("orderHotelName"+index, reshotelName);
			req.setAttribute("orderHotelLocation"+index, reshotelLocation);
			req.setAttribute("orderHotelImage"+index, reshotelImage);
			index++;
		}
		
		//리뷰순 조회
		list = service.OrderReviewHotel();
		for(HotelVO hotel : list) {
			int reshotelId =hotel.getHotelId();
			String reshotelName = hotel.getHotelName();
			String reshotelLocation = hotel.getHotelLocation1();
			String reshotelImage = hotel.getHotelImage();
			
			
			
			req.setAttribute("orderHotelId"+index, reshotelId);
			req.setAttribute("orderHotelName"+index, reshotelName);
			req.setAttribute("orderHotelLocation"+index, reshotelLocation);
			req.setAttribute("orderHotelImage"+index, reshotelImage);
			index++;
		}
		
		//평점순 조회
		list = service.OrderPointHotel();
		for(HotelVO hotel : list) {
			int reshotelId =hotel.getHotelId();
			String reshotelName = hotel.getHotelName();
			String reshotelLocation = hotel.getHotelLocation1();
			String reshotelImage = hotel.getHotelImage();
			
			
			
			
			req.setAttribute("orderHotelId"+index, reshotelId);
			req.setAttribute("orderHotelName"+index, reshotelName);
			req.setAttribute("orderHotelLocation"+index, reshotelLocation);
			req.setAttribute("orderHotelImage"+index, reshotelImage);
			index++;
		}
		
		return "mainpage/mainPage.tiles";
	}

}
