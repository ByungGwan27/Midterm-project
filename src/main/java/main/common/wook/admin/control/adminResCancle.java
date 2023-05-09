package main.common.wook.admin.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.admin.domain.ReservationVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class adminResCancle implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int resId = Integer.parseInt(req.getParameter("id"));
		AdminService service = new AdminServiceImpl();
		int result = service.resCancle(resId);
		
		List<ReservationVO> list = service.adminResList();
		
		req.setAttribute("resList", list);
		return "adminpage/adminReservationList.tiles";
	}

}
