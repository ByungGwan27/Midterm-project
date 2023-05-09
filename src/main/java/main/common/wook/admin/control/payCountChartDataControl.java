package main.common.wook.admin.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import main.common.control.Control;
import main.common.wook.admin.domain.chartVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class payCountChartDataControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] Str = {"01","02","03","04","05","06","07","08","09","10","11","12"};
		String year = new SimpleDateFormat("yy").format(new Date());
		int[] data = new int[12];
		
		for(int i =1; i<=12; i++) {
			String sebDate = year+"/"+Str[i-1];
			
			AdminService service = new AdminServiceImpl();
			int count = service.payCountChartData(sebDate);
			
			data[i-1] = count;
			
		}
		
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(data);
		
		return json+".json";
	}

}
