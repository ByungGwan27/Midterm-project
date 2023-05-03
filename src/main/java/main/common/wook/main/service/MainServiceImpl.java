package main.common.wook.main.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;
import main.common.wook.main.domain.HotelVO;
import main.common.wook.main.domain.MainVO;
import main.common.wook.main.mapper.MainMapper;

public class MainServiceImpl implements MainService{
	SqlSession session = DataSource.getInstance().openSession(true); // true = 자동커밋
	MainMapper mapper = session.getMapper(MainMapper.class);

	@Override
	public MainVO memberCount() {
		
		return mapper.memberCount();
	}

	@Override
	public MainVO reservationCount() {
		
		return mapper.reservationCount();
	}

	@Override
	public MainVO hotelCount() {
		
		return mapper.hotelCount();
	}

	@Override
	public MainVO reviewCount() {
		
		return mapper.reviewCount();
	}

	@Override
	public List<HotelVO> OrderResHotel() {
		
		return mapper.OrderResHotel();
	}

	@Override
	public List<HotelVO> OrderReviewHotel() {
	
		return mapper.OrderReviewHotel();
	}

	@Override
	public List<HotelVO> OrderPointHotel() {
		
		return mapper.OrderPointHotel();
	}

}
