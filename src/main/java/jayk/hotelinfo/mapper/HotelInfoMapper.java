package jayk.hotelinfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import jayk.hotelinfo.domain.HotelInfoVO;

public interface HotelInfoMapper {
	public List<HotelInfoVO> hotelList();
	public HotelInfoVO selectHotel(@Param("hotelId")int hotelId, @Param("hotelLocation1")String hotelLocation1); 
	public List<HotelInfoVO> roomList(int hotelId);
	public List<HotelInfoVO> reviewList(int hotelId);
	public List<HotelInfoVO> similarList(@Param("hotelId")int hotelId, @Param("hotelLocation1")String hotelLocation1);
	public List<HotelInfoVO> adminHotelList();
	public HotelInfoVO selectAdminHotel(int hotelId);
	public HotelInfoVO selectAdminHotelRoom(@Param("hotelID")int hotelID, @Param("roomId")int roomId);
	public int updateAdminHotel(HotelInfoVO vo);
	public int updateAdminHotelRoom(HotelInfoVO vo);
	public int insertAdminHotel(HotelInfoVO vo);
	public int insertAdminRoom(HotelInfoVO vo);

}
