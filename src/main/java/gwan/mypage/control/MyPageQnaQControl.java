package gwan.mypage.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;

public class MyPageQnaQControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pageInfo = "myPageQna.do";
		
		if (req.getMethod().equals("GET")) {
			pageInfo = "mypage/myPageQnaQ.tiles";
		} 
		
		return pageInfo;
	}

}
