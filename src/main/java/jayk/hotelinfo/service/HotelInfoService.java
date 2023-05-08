package jayk.hotelinfo.service;

import java.util.List;

import jayk.hotelinfo.domain.HotelInfoVO;

public interface HotelInfoService {
	public List<HotelInfoVO> hotelList();
	public HotelInfoVO getHotelInfo(int hotelId);
	public List<HotelInfoVO> roomList(int hotelId);
	public List<HotelInfoVO> reviewList(int hotelId);
	public List<HotelInfoVO> similarList(int hotelId);
	public List<HotelInfoVO> adminHotelList();
	public HotelInfoVO getAdminHotel(int hotelId);
}
