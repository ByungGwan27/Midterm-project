package main.common.wook.main.service;

import java.util.List;

import main.common.wook.main.domain.HotelVO;
import main.common.wook.main.domain.MainVO;

public interface MainService {
	public MainVO memberCount();
	public MainVO reservationCount();
	public MainVO hotelCount();
	public MainVO reviewCount();
	public List<HotelVO> OrderResHotel();
	public List<HotelVO> OrderReviewHotel();
	public List<HotelVO> OrderPointHotel();
}
