package jayk.hotelinfo.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;

public class imageIdReadControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HotelInfoService service = new HotelInfoServiceImpl();
		List<HotelInfoVO> list = service.readImageId();
		
		String json = "[";
		for (int i = 0; i < list.size(); i++) {
			json += "{\"imageId\":" + list.get(i).getImageId() + "}";
			if(i + 1 != list.size()) {
				json += ",";
			}
					
		}
		
		json += "]";
		return json + ".json";
	}

}
