package main.common.frontcontrol;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.dorminfo.control.DormListControl;
import jayk.dorminfo.control.GetDormControl;
import main.common.control.Control;
import main.common.wook.admin.control.adminDeclarationInfoControl;
import main.common.wook.admin.control.adminDeclarationListControl;
import main.common.wook.admin.control.adminMemberInfoControl;
import main.common.wook.admin.control.adminMemberListControl;
import main.common.wook.admin.control.adminPageControl;
import main.common.wook.admin.control.adminQnaControl;
import main.common.wook.admin.control.adminReservationInfoControl;
import main.common.wook.admin.control.adminReservationListControl;

public class FrontController extends HttpServlet{
	private Map<String, Control> map;
	String encoding;
	
	public FrontController() {
		map = new HashMap<>();
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		encoding = config.getInitParameter("enc");
		
		
		//메인페이지
		map.put("/mainPage.do", new MainControl());
		
		// 20230503 김성욱
		//관리자 페이지
		map.put("/adminPage.do", new adminPageControl());
		map.put("/adminQna.do" , new adminQnaControl());
		map.put("/adminMemberList.do", new adminMemberListControl());
		map.put("/adminDeclarationList.do", new adminDeclarationListControl());
		map.put("/adminReservationList.do", new adminReservationListControl());
		map.put("/adminMemberInfo.do", new adminMemberInfoControl());
		map.put("/adminDeclarationInfo.do", new adminDeclarationInfoControl());
		map.put("/adminReservationInfo.do", new adminReservationInfoControl());
		
		
		// 20230503 김자영
		//숙소리스트
		map.put("/dormListPage.do", new DormListControl());
		
		//인포페이지
		map.put("/dormInfoPage.do", new GetDormControl());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding(encoding);

		String uri = req.getRequestURI();
		String context = req.getContextPath();
		String path = uri.substring(context.length());
		System.out.println(path);
		
		Control control = map.get(path);
		String viewPage = control.execute(req, resp);
		System.out.println(viewPage);

		if (viewPage.endsWith(".do")) {
			resp.sendRedirect(viewPage);
			return;
		}
		
		if (viewPage.endsWith(".json")) {
			resp.setContentType("text/json;charset=UTF-8");
			resp.getWriter().print(viewPage.substring(0, viewPage.length() - 5));
			return;
		}

		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);
	}
	
}
