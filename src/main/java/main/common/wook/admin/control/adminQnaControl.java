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

public class adminQnaControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pageStr1 = req.getParameter("page1");
		System.out.println(pageStr1);
		pageStr1 = (pageStr1 == null ? "1" : pageStr1);
		int page1= Integer.parseInt(pageStr1);
		
		
		//jsonpormat 라이브러리 추가
		
		AdminService service = new AdminServiceImpl();
		List<QnaVO> nonVO = service.qnaNoneAns(page1);
		
		int total1 = service.getQnaCount1();
		
		
		PageDTO dto1 = new PageDTO(page1, total1);
		
		
		//ajax로 변경
		Map<String, Object> map = new HashMap<>();
		map.put("NAQ", nonVO);
		
		map.put("page1",dto1);
		
		
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(map);
		
		//req.setAttribute("NAQ", nonVO);
		//req.setAttribute("CAQ", ComVO);
		//req.setAttribute("pageInfo1", dto1);
		//req.setAttribute("pageInfo2", dto2);
		
//		return "adminpage/adminQnaPage.tiles";
		return json+".json";
	}

}
