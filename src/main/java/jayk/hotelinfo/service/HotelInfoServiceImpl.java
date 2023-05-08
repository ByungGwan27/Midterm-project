package jayk.hotelinfo.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.mapper.HotelInfoMapper;
import main.common.control.DataSource;

public class HotelInfoServiceImpl implements HotelInfoService{
	SqlSession session = DataSource.getInstance().openSession(true);
	HotelInfoMapper mapper = session.getMapper(HotelInfoMapper.class);
	
	@Override
	public List<HotelInfoVO> hotelList() {
		return mapper.hotelList();
	}

	@Override
	public HotelInfoVO getHotelInfo(int hotelId) {
		return mapper.selectHotel(hotelId);
	}

	@Override
	public List<HotelInfoVO> roomList(int hotelId) {
		return mapper.roomList(hotelId);
	}

	@Override
	public List<HotelInfoVO> reviewList(int hotelId) {
		return mapper.reviewList(hotelId);
	}

	@Override
	public List<HotelInfoVO> similarList(int hotelId) {
		return mapper.similarList(hotelId);
	}

	@Override
	public List<HotelInfoVO> adminHotelList() {
		return mapper.adminHotelList();
	}

	@Override
	public HotelInfoVO getAdminHotel(int hotelId) {
		return mapper.selectAdminHotel(hotelId);
	}

	@Override
	public boolean modifyAdminHotel(HotelInfoVO vo) {
		return mapper.updateAdminHotel(vo) == 1;
	}

	@Override
	public boolean addAdminHotel(HotelInfoVO vo) {
		return mapper.insertAdminHotel(vo) == 1;
	}

}
