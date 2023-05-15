package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;

public class MyPageCommentControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int hotelId = Integer.parseInt(req.getParameter("hotelId"));
		req.setAttribute("commentHotelId", hotelId);
		
		return "mypage/myPageComment.tiles";
	}

}