package shin.admin.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;
import shin.notice.domain.NoticeVO;
import shin.notice.service.NoticeService;
import shin.notice.service.NoticeServiceImpl;

public class AdminPayListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HotelInfoService service = new HotelInfoServiceImpl();
		//List<HotelInfoVO> adminHotelList = service.adminHotelList();
		//req.setAttribute("adminHotelList", adminHotelList);
		
		NoticeService service2 = new NoticeServiceImpl();
		List<NoticeVO> list = service2.noticeList(); 
		req.setAttribute("list", list);
		
		
		return "adminpay/adminPayList.tiles";
	}

}
