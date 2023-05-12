package main.common.wook.pay.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.admin.domain.ReservationVO;
import main.common.wook.pay.domain.paySuccessVO;
import main.common.wook.pay.service.PayPageService;
import main.common.wook.pay.service.PayPageServiceImpl;

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
			couponId = "1";
		}
		int getCouponId = Integer.parseInt(couponId);
		int roomPrice = Integer.parseInt(req.getParameter("roomPrice")) ;
		int canUsePoint = Integer.parseInt(req.getParameter("canUsePoint"));
		
		//데이터 확인용 출력
		System.out.println(memberId);
		System.out.println(hotelId);
		System.out.println(roomId);
		System.out.println(finalPrice);
		System.out.println(resPeople);
		System.out.println(resDate);
		System.out.println(checkinName);
		System.out.println(checkinPhone);
		System.out.println(getCouponId);
		System.out.println(roomPrice);
		System.out.println(canUsePoint);
		
		
		//날짜 변환
		String inDate = resDate.substring(0, 10);
		String outDate = resDate.substring(13, 23);
		// 입력 될 날짜
		String checkin = inDate.substring(8, 10) + inDate.substring(2, 6) + inDate.substring(0, 2);
		String checkout = outDate.substring(8, 10) + outDate.substring(2, 6) + outDate.substring(0, 2);
		
		paySuccessVO success = new paySuccessVO();
		success.setMemberId(memberId);
		success.setHotelId(hotelId);
		success.setRoomId(roomId);
		success.setFinalPrice(finalPrice);
		success.setResPeople(resPeople);
		success.setCheckinDate(checkin);
		success.setCheckoutDate(checkout);
		success.setCheckinName(checkinName);
		success.setCheckinPhone(checkinPhone);
		success.setCouponId(getCouponId);
		success.setRoomPrice(roomPrice);
		success.setCanUsePoint(canUsePoint);
		
		PayPageService service = new PayPageServiceImpl();
		int putRes = service.putResTable(success);
		int useCoupin = service.useCouponUpdate(getCouponId);
		int getResId = service.getResId();
		
		success.setReservationId(getResId);
		int putPay = service.putPayTable(success);
		
		int updatePoint = service.usePointUpdate(success);
		
		
		return "myPageHome.do";
	}

}
