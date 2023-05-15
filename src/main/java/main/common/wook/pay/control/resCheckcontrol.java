package main.common.wook.pay.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import main.common.control.Control;
import main.common.wook.pay.domain.paySuccessVO;
import main.common.wook.pay.service.PayPageService;
import main.common.wook.pay.service.PayPageServiceImpl;

public class resCheckcontrol implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int roomId =Integer.parseInt(req.getParameter("roomId")) ;
		String date = req.getParameter("date");
		//날짜 변환
		String inDate = date.substring(0, 10);
		String outDate = date.substring(13, 23);
		// 입력 될 날짜
		String checkin = inDate.substring(8, 10)+"/"  + inDate.substring(0, 2) + inDate.substring(2, 5);
		String checkout = outDate.substring(8, 10)+"/"  + outDate.substring(0, 2) + outDate.substring(2, 5);
		
		paySuccessVO vo = new paySuccessVO();
	
		vo.setRoomId(roomId);
		vo.setCheckinDate(checkin);
		vo.setCheckoutDate(checkout);
		
		PayPageService service = new PayPageServiceImpl();
		int result = service.resCheck(vo);
		
		
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(result);
		
		return json+".json";
	}

}
