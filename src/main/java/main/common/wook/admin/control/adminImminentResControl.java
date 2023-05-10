package main.common.wook.admin.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import main.common.control.Control;
import main.common.wook.admin.domain.ReservationVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class adminImminentResControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pageStr = req.getParameter("page");
		pageStr = (pageStr == null ? "1" : pageStr);
		int page= Integer.parseInt(pageStr);
		//System.out.println("page는"+page);
		
		AdminService service = new AdminServiceImpl();
		List<ReservationVO> list = service.imminentRes(page);
		int total = service.imminentResCount();
		
		PageIn5DTO dto = new PageIn5DTO(page, total);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("data", list);
		map.put("page", dto);
		
		
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);
		
		
		
		return json+".json";
	}

}
