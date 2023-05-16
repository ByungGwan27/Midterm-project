package jayk.hotelinfo.service;

import java.util.List;

import jayk.hotelinfo.domain.ConditionDTO;
import jayk.hotelinfo.domain.HotelInfoVO;

public interface HotelInfoService {
	//nav
	public List<HotelInfoVO> navListLoca();
	public List<HotelInfoVO> navListThema();
	
	//hotelList
	public List<HotelInfoVO> hotelList(int page);
	
	public List<HotelInfoVO> filteredList(String hotelLocation1, String hotelThema, int roomPrice, int roomMax, int roomMin);
	
	public List<HotelInfoVO> hotelListLoca(String hotelLocation1);
	public List<HotelInfoVO> hotelListThema(String hotelThema);
	public List<HotelInfoVO> hotelListNum(int roomMax, int roomMin);
	public List<HotelInfoVO> hotelListPrice(int roomPrice);
	
	//hotelInfo
	public HotelInfoVO getHotelInfo(int hotelId, String hotelLocation1);
	public List<HotelInfoVO> bestReview(int hotelId);
	public List<HotelInfoVO> roomList(int hotelId);
	public List<HotelInfoVO> roomDetailList(int hotelId);
	public List<HotelInfoVO> reviewList(int hotelId);
	public List<HotelInfoVO> similarList(int hotelId, String hotelLocation1);
	
	//adminHotelList
	public List<HotelInfoVO> adminHotelList(int page);
	
	//adminHotelInfo
	public HotelInfoVO getAdminHotel(int hotelId);
	public HotelInfoVO getAdminHotelRoom(int hotelId, int roomId);
	
	//hotelInfoModify
	public boolean modifyAdminHotel(HotelInfoVO vo);
	public boolean modifyAdminHotelRoom(HotelInfoVO vo);
	public boolean modifyAdiminHotelRoomDetail(HotelInfoVO vo);
	
	//hotelAdd
	public boolean addAdminHotel(HotelInfoVO vo);
	public boolean addAdminRoom(HotelInfoVO vo);
	public boolean addAdminRoomImage(HotelInfoVO vo);
	public boolean addAdminRoomDetail(HotelInfoVO vo);
	public List<HotelInfoVO> readHotelId();
	public List<HotelInfoVO> readRoomId();
	public List<HotelInfoVO> readImageId();
	public List<HotelInfoVO> readHotelList();
	
	public int totalCount();

}
