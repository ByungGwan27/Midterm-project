package gwan.loginpage.ajax.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwan.loginpage.domain.LoginPageVO;
import gwan.loginpage.service.LoginPageService;
import gwan.loginpage.service.LoginPageServiceImpl;
import main.common.control.Control;

public class CreateUserReadNicknameAjaxControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LoginPageService service = new LoginPageServiceImpl();
		List<LoginPageVO> list = service.readNickname();
		
		String json = "[";
		for (int i = 0; i < list.size(); i++) {
			json += "{\"memberNickname\":\"" + list.get(i).getMemberNickname() + "\"}";
			
			if(i + 1 != list.size()) {
				json += ",";
			}
			
		}
		json += "]";
		
		return json + ".json";
	}

}
