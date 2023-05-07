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

public class GetHotelControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String hotelId = req.getParameter("hotelId");
		HotelInfoService service = new HotelInfoServiceImpl();
		HotelInfoVO hotelInfo = service.getHotelInfo(Integer.parseInt(hotelId));
		
		req.setAttribute("hotelInfo", hotelInfo);
		//System.out.println(hotelInfo);
		
		List<HotelInfoVO> roomList = service.roomList(Integer.parseInt(hotelId));
		req.setAttribute("roomList", roomList);
		//System.out.println(roomList);
		
		List<HotelInfoVO> reviewList = service.reviewList(Integer.parseInt(hotelId));
		req.setAttribute("reviewList", reviewList);
		System.out.println(reviewList);
		
		return "hotelinfopage/hotelInfoPage.tiles";
	}

}
