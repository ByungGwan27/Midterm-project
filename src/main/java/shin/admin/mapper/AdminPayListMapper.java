package shin.admin.mapper;

import java.util.List;

import jayk.hotelinfo.domain.HotelInfoVO;
import shin.notice.domain.NoticeVO;

public interface AdminPayListMapper {
	
	
	public List<NoticeVO> noticeList();
	public List<HotelInfoVO> hotelList();
	public List<HotelInfoVO> roomList(int hotelId);
	public List<HotelInfoVO> reviewList(int hotelId);
	public List<HotelInfoVO> similarList(int hotelId);
	public List<HotelInfoVO> adminHotelList();
	public List<HotelInfoVO> similarList(int hotelId, String hotelLocation1);

}
