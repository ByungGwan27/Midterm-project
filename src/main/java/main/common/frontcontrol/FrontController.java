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

import main.common.control.Control;
import shin.admin.control.AdminPayListControl;
import shin.notice.control.NoticeAddFormControl;
import shin.notice.control.NoticeListControl;
import shin.post.control.PostDetailControl;
import shin.post.control.PostListControl;

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
		
		//여행 포스트 리스트
		map.put("/postList.do", new PostListControl());
		//여행 포스트 상세페이지
		map.put("/postDetail.do", new PostDetailControl());
		//공지사항 페이지
		map.put("/noticeList.do", new NoticeListControl());
		//공지사항 작성페이지
		map.put("/noticeAddForm.do", new NoticeAddFormControl());
		//관리자 결제정보창
		map.put("/adminPayList.do", new AdminPayListControl());
		
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
