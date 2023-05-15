package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.common.control.Control;

public class MyPageReportControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int hotelId = Integer.parseInt(req.getParameter("hotelId"));
		req.setAttribute("reportHotelId", hotelId);
		
		return "mypage/myPageReport.tiles";
	}

}
