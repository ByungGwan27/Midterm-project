package jayk.hotelinfo.service;

import java.util.List;
import java.util.Map;

import jayk.hotelinfo.domain.HotelInfoVO;

public interface HotelInfoService {
	public List<HotelInfoVO> navListLoca();
	public List<HotelInfoVO> navListThema();
	public List<HotelInfoVO> hotelList();
	public List<HotelInfoVO> hotelListLoca(String hotelLocation1);
	public List<HotelInfoVO> hotelListThema(String hotelThema);
	public HotelInfoVO getHotelInfo(int hotelId, String hotelLocation1);
	public List<HotelInfoVO> roomList(int hotelId);
	public List<HotelInfoVO> reviewList(int hotelId);
	public List<HotelInfoVO> similarList(int hotelId, String hotelLocation1);
	public List<HotelInfoVO> adminHotelList();
	public HotelInfoVO getAdminHotel(int hotelId);
	public HotelInfoVO getAdminHotelRoom(int hotelId, int roomId);
	public boolean modifyAdminHotel(HotelInfoVO vo);
	public boolean modifyAdminHotelRoom(HotelInfoVO vo);
	public boolean addAdminHotel(HotelInfoVO vo);
	public boolean addAdminRoom(HotelInfoVO vo);
	public boolean addAdminRoomImage(HotelInfoVO vo);
	public boolean addAdminRoomDetail(HotelInfoVO vo);
}
