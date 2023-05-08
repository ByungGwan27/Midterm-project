package jayk.hotelinfo.mapper;

import java.util.List;

import jayk.hotelinfo.domain.HotelInfoVO;

public interface HotelInfoMapper {
	public List<HotelInfoVO> hotelList();
	public HotelInfoVO selectHotel(int hotelId); 
	public List<HotelInfoVO> roomList(int hotelId);
	public List<HotelInfoVO> reviewList(int hotelId);
	public List<HotelInfoVO> similarList(int hotelId);
	public List<HotelInfoVO> adminHotelList();
	public HotelInfoVO selectAdminHotel(int hotelId);
	public int updateAdminHotel(HotelInfoVO vo);
	public int insertAdminHotel(HotelInfoVO vo);
}
