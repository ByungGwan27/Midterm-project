package main.common.wook.main.mapper;

import java.util.List;

import main.common.wook.main.domain.HotelVO;
import main.common.wook.main.domain.MainVO;

public interface MainMapper {
	//회원 수 조회
	public MainVO memberCount();
	public MainVO reservationCount();
	public MainVO hotelCount();
	public MainVO reviewCount();
	public List<HotelVO> OrderResHotel();
	public List<HotelVO> OrderReviewHotel();
	public List<HotelVO> OrderPointHotel();
}
