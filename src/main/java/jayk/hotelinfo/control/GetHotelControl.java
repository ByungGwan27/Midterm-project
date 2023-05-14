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
		String hotelLocation1 = req.getParameter("hotelLocation1");
		HotelInfoService service = new HotelInfoServiceImpl();
		HotelInfoVO hotelInfo = service.getHotelInfo(Integer.parseInt(hotelId), hotelLocation1);
		req.setAttribute("hotelInfo", hotelInfo);
		//System.out.println(hotelInfo);
		
		//상세객실리스트
		List<HotelInfoVO> roomList = service.roomList(Integer.parseInt(hotelId));
		req.setAttribute("roomList", roomList);
		//System.out.println("roomList : " + roomList);
		
		//시설정보
		List<HotelInfoVO> roomDetailList = service.roomDetailList(Integer.parseInt(hotelId));
		req.setAttribute("roomDetailList", roomDetailList);
		//리뷰리스트
		List<HotelInfoVO> reviewList = service.reviewList(Integer.parseInt(hotelId));
		req.setAttribute("reviewList", reviewList);
		//System.out.println(reviewList);
		
		List<HotelInfoVO> similarList = service.similarList(Integer.parseInt(hotelId), hotelLocation1);
		req.setAttribute("similarList", similarList);
		
		return "hotelinfopage/hotelInfoPage.tiles";
	}

}
