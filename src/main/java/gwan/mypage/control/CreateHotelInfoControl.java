package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class CreateHotelInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		int hid = Integer.parseInt(req.getParameter("hotelId"));
		
		MyPageService service = new MyPageServiceImpl();
		
		boolean ss = service.createWishList(id, hid);
		
		return "hotelInfoPage.do?hotelId=" + hid;
	}

}
