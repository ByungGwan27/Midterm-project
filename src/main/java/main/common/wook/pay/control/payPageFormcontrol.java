package main.common.wook.pay.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.pay.domain.PayVO;
import main.common.wook.pay.service.PayPageService;
import main.common.wook.pay.service.PayPageServiceImpl;

public class payPageFormcontrol implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int roomId =Integer.parseInt(req.getParameter("roomId")) ;
		String memberId = req.getParameter("memberId");
		
		PayPageService service = new PayPageServiceImpl();
		PayVO vo = service.getRoomInfo(roomId);
		req.setAttribute("payInfo", vo);
		vo = service.getPayMemberInfo(memberId);
		req.setAttribute("payMemberInfo", vo);
		List<PayVO> list = service.getPayMemberCouponInfo(memberId);
		req.setAttribute("couponInfo", list);
		list = service.getRoomInfoImages(roomId);
		req.setAttribute("roomImages", list);
		System.out.println("list는 = " + list);
		
		
		
		
		return "wookPayPage/payPage.tiles";
//		return "wookPayPage/test.tiles";
		
	}

}
