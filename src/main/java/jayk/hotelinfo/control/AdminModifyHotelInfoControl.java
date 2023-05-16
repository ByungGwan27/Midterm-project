package jayk.hotelinfo.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Arrays;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.service.HotelInfoService;
import jayk.hotelinfo.service.HotelInfoServiceImpl;
import main.common.control.Control;

public class AdminModifyHotelInfoControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HotelInfoService service = new HotelInfoServiceImpl();

		if (req.getMethod().equals("GET")) {
			String hotelId = req.getParameter("hotelId");
			HotelInfoVO adminHotelInfo = service.getAdminHotel(Integer.parseInt(hotelId));
			// System.out.println(adminHotelInfo);
			req.setAttribute("adminHotelInfo", adminHotelInfo);

			return "adminpage/adminHotelInfoModify.tiles";

		} else if (req.getMethod().equals("POST")) {
			//사진 업로드
			String saveDir = req.getServletContext().getRealPath("images");
			System.out.println(saveDir);
			//System.out.println("저장위치" + saveDir);
			int maxSize = 5 * 1024 * 1024;
			String encoding = "UTF-8";
			DefaultFileRenamePolicy rn = new DefaultFileRenamePolicy();
			MultipartRequest multi
					= new MultipartRequest(req, saveDir, maxSize, encoding, rn);
			
			Enumeration<?> enu = multi.getFileNames();
			while (enu.hasMoreElements()) {
				String file = (String) enu.nextElement();
				//System.out.println("file: " + file);
			}
			
			
			HotelInfoVO admimModifyHotel = new HotelInfoVO();

			String hotelId = multi.getParameter("hotelId");
			String hotelName = multi.getParameter("hotelName");
			String hotelLocation1 = multi.getParameter("hotelLocation1");
			String hotelLocation2 = multi.getParameter("hotelLocation2");
			String locationDetail = multi.getParameter("locationDetail");
			String hotelThema = multi.getParameter("hotelThema");
			String attach = multi.getFilesystemName("attach");
			
			System.out.println("attach="+attach);
		
			admimModifyHotel.setHotelId(Integer.parseInt(hotelId));
			admimModifyHotel.setHotelName(hotelName);
			admimModifyHotel.setHotelLocation1(hotelLocation1);
			admimModifyHotel.setHotelLocation2(hotelLocation2);
			admimModifyHotel.setLocationDetail(locationDetail);
			admimModifyHotel.setHotelThema(hotelThema);
			admimModifyHotel.setHotelImage(attach);
			
			service.modifyAdminHotel(admimModifyHotel);
		
			
					return "adminHotelList.do";
			
			/*
			 * HotelInfoVO admimModifyHotel = new HotelInfoVO();
			 * 
			 * String hotelId = req.getParameter("hotelId"); String hotelName =
			 * req.getParameter("hotelName"); String hotelLocation1 =
			 * req.getParameter("hotelLocation1"); String hotelLocation2 =
			 * req.getParameter("hotelLocation2"); String locationDetail =
			 * req.getParameter("locationDetail"); String hotelThema =
			 * req.getParameter("hotelThema");
			 * 
			 * admimModifyHotel.setHotelId(Integer.parseInt(hotelId));
			 * admimModifyHotel.setHotelName(hotelName);
			 * admimModifyHotel.setHotelLocation1(hotelLocation1);
			 * admimModifyHotel.setHotelLocation2(hotelLocation2);
			 * admimModifyHotel.setLocationDetail(locationDetail);
			 * admimModifyHotel.setHotelThema(hotelThema);
			 * 
			 * service.modifyAdminHotel(admimModifyHotel);
			 * 
			 * 
			 * return "adminHotelList.do";
			 */
			}

		return null;
	}

}
