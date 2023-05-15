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

public class AdminHotelListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pageStr = req.getParameter("page");
		pageStr = pageStr == null ? "1" : pageStr;
		int page = Integer.parseInt(pageStr);
		
		HotelInfoService service = new HotelInfoServiceImpl();
		int total = service.totalCount();
		List<HotelInfoVO> adminHotelList = service.adminHotelList();
		
		PageDTO dto = new PageDTO(page, total);
		req.setAttribute("adminHotelList", adminHotelList);
		req.setAttribute("pageInfo", dto);
		System.out.println(adminHotelList);
		return "adminpage/adminHotelList.tiles";
	}

}
