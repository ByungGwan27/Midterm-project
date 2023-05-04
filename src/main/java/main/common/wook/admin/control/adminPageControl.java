package main.common.wook.admin.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.common.control.Control;
import main.common.wook.admin.domain.AdminVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;
import main.common.wook.main.domain.MainVO;
import main.common.wook.main.service.MainService;
import main.common.wook.main.service.MainServiceImpl;

public class adminPageControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//관리자 페이지 회원 수 조회
		MainService service = new MainServiceImpl();
		MainVO vo = service.memberCount();
		int count = vo.getMemberCount();
		HttpSession session = req.getSession();
		session.setAttribute("memberCount", count);
		
		
		//관리자 페이지 결제건수 조회
		AdminService service1 = new AdminServiceImpl();
		AdminVO vo1 = service1.payCount();
		int payCount = vo1.getPayCount();
		session.setAttribute("payCount", payCount);
		
		//관리자 페이지 월별 결제건수 조회
		vo1 = service1.monthPayCount();
		int MonthPayCount = vo1.getMonthPayCount();
		session.setAttribute("MonthPayCount", MonthPayCount);
		
		//관리자 페이지 결제총액 조회
		vo1 = service1.totalPay();
		int totalPay = vo1.getTotalPay();
		session.setAttribute("totalPay", totalPay);
		
		//관리자 페이지 월별 결제총액 조회
		vo1 = service1.monthTotalPay();
		int monthTotalPay = vo1.getTotalPay();
		session.setAttribute("monthTotalPay", monthTotalPay);
		
		
	}
		
}
