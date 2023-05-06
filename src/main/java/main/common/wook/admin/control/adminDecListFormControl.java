package main.common.wook.admin.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import main.common.control.Control;
import main.common.wook.admin.domain.DeclarationVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class adminDecListFormControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AdminService service = new AdminServiceImpl();
		List<DeclarationVO> list = service.adminDecList();
		
		req.setAttribute("decList", list);
		
		
		return "adminpage/adminDeclarationList.tiles";
	}

}
