package main.common.wook.pay.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;

public class successPayControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String memberId = req.getParameter("memberId");
		int hotelId =Integer.parseInt(req.getParameter("hotelId")) ;
		int roomId = Integer.parseInt(req.getParameter("roomId")) ;
		int  finalPrice = Integer.parseInt(req.getParameter("finalPrice")) ;
		int resPeople = Integer.parseInt(req.getParameter("resPeople")) ;
		String resDate = req.getParameter("resDate");
		String checkinName = req.getParameter("checkinName");
		String checkinPhone = req.getParameter("checkinPhone");
		String couponId = req.getParameter("couponId") ; //사용안함 시 null로 변환 필요
		if (couponId.equals("사용안함") ) {
			couponId = "null";
		}
		int roomPrice = Integer.parseInt(req.getParameter("roomPrice")) ;
		int canUsePoint = Integer.parseInt(req.getParameter("canUsePoint"));

		System.out.println(memberId);
		System.out.println(hotelId);
		System.out.println(roomId);
		System.out.println(finalPrice);
		System.out.println(resPeople);
		System.out.println(resDate);
		System.out.println(checkinName);
		System.out.println(checkinPhone);
		System.out.println(couponId);
		System.out.println(roomPrice);
		System.out.println(canUsePoint);
		
		
		return "myPageHome.do";
	}

}
