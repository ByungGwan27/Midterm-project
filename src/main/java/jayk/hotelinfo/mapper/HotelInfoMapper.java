package jayk.hotelinfo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import jayk.hotelinfo.domain.HotelInfoVO;

public interface HotelInfoMapper {
	//nav
	public List<HotelInfoVO> navListLoca();
	public List<HotelInfoVO> navListThema();
	
	public List<HotelInfoVO> hotelList();
	public List<HotelInfoVO> hotelListLoca(String hotelLocation1);
	public List<HotelInfoVO> hotelListThema(String hotelThema);
	public List<HotelInfoVO> hotelListNum(@Param("roomMax")int roomMax, @Param("roomMin")int roomMin);
	public List<HotelInfoVO> hotelListPrice(int roomPrice);
	
	//pagination
	public List<HotelInfoVO> hotelListPage(int page);
	public int getCount();
	
	//hotelInfoPage
	public HotelInfoVO selectHotel(@Param("hotelId")int hotelId, @Param("hotelLocation1")String hotelLocation1); 
	public List<HotelInfoVO> roomList(int hotelId);
	public List<HotelInfoVO> reviewList(int hotelId);
	public List<HotelInfoVO> similarList(@Param("hotelId")int hotelId, @Param("hotelLocation1")String hotelLocation1);
	public List<HotelInfoVO> adminHotelList();
	public HotelInfoVO selectAdminHotel(int hotelId);
	public HotelInfoVO selectAdminHotelRoom(@Param("hotelId")int hotelId, @Param("roomId")int roomId);
	public int updateAdminHotel(HotelInfoVO vo);
	public int updateAdminHotelRoom(HotelInfoVO vo);
	public int insertAdminHotel(HotelInfoVO vo);
	public int insertAdminRoom(HotelInfoVO vo);
	public int insertAdminRoomImage(HotelInfoVO vo);
	public int insertAdminRoomDetail(HotelInfoVO vo);
	
}
