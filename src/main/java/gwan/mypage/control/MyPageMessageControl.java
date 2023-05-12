package gwan.mypage.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwan.loginpage.domain.LoginPageVO;
import gwan.loginpage.service.LoginPageService;
import gwan.loginpage.service.LoginPageServiceImpl;
import gwan.mypage.domain.MyPageVO;
import gwan.mypage.service.MyPageService;
import gwan.mypage.service.MyPageServiceImpl;
import main.common.control.Control;

public class MyPageMessageControl implements Control {


	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageService service = new MyPageServiceImpl();
		LoginPageService  userservice = new LoginPageServiceImpl();
		
		List<LoginPageVO> userList = userservice.readId();
		
		for (int i = 0; i < userList.size(); i++) {
			System.out.println(userList);
		}
		
		List<MyPageVO> list = service.readProfile(null);
			
		
		
		
		return "mypage/myPageMessage.tiles";
	}

}
