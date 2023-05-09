package main.common.wook.admin.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.admin.domain.ReservationVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class adminReservationInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int resId = Integer.parseInt(req.getParameter("id"));
		
		System.out.println(resId);
		
		AdminService service = new AdminServiceImpl();
		ReservationVO vo = service.adminResInfo(resId);
		
		System.out.println(vo.getReservationId());
		
		req.setAttribute("resInfo", vo);
		
		return "adminpage/adminReservationInfo.tiles";
	}

}
