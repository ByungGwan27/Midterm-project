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
import main.common.control.PageDTO;
import main.common.wook.admin.domain.QnaVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class adminQnaSecondControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pageStr2 = req.getParameter("page2");
		pageStr2 = (pageStr2 == null ? "1" : pageStr2);
		int page2= Integer.parseInt(pageStr2);
		
		AdminService service = new AdminServiceImpl();
		
		List<QnaVO> ComVO = service.qnaComAns(page2);
		
		int total2 = service.getQnaCount2();
		
		PageDTO dto2 = new PageDTO(page2, total2);
		
		Map<String, Object> map = new HashMap<>();
		map.put("CAQ", ComVO);
		map.put("page2",dto2);
		
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);
		
		return json+".json";
	}

}
