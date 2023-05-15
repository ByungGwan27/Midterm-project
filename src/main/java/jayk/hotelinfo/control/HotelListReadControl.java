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

public class HotelListReadControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HotelInfoService service = new HotelInfoServiceImpl();
		List<HotelInfoVO> list = service.readHotelList();
		
		String json = "[";
		for (int i = 0; i < list.size(); i++) {
			json += "{\"hotelId\":"+ list.get(i).getHotelId() + ","; 
			json += "\"hotelName\":\""+ list.get(i).getHotelName() + "\",";
			json += "\"hotelThema\":\"" + list.get(i).getHotelThema() + "\",";
			json += "\"hotelLocation1\":\"" + list.get(i).getHotelLocation1() + "\",";
			json += "\"hotelLocation2\":\"" + list.get(i).getHotelLocation2() + "\",";
			json += "\"hotelImage\":\"" + list.get(i).getHotelImage() + "\",";
			json += "\"roomPrice\":"+ list.get(i).getRoomPrice() + ",";
			json += "\"rcount\":"+ list.get(i).getRcount() + ",";
			json += "\"avgpoint\":"+ list.get(i).getAvgpoint() + ",";
			json += "\"avgstar\":"+ list.get(i).getAvgstar() + "}";

			if(i+1 != list.size()){
				json += ",";
			}
		}
		json += "]";
		return json + ".json";
	}

}
