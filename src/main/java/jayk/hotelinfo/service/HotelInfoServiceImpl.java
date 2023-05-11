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
	public HotelInfoVO getHotelInfo(int hotelId, String hotelLocation1) {
		return mapper.selectHotel(hotelId, hotelLocation1);
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
	public List<HotelInfoVO> similarList(int hotelId, String hotelLocation1) {
		return mapper.similarList(hotelId, hotelLocation1);
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

	@Override
	public boolean modifyAdminHotelRoom(HotelInfoVO vo) {
		return mapper.updateAdminHotelRoom(vo) == 1;
	}

	@Override
	public HotelInfoVO getAdminHotelRoom(int hotelId, int roomId) {
		return mapper.selectAdminHotelRoom(hotelId, roomId);
	}

	@Override
	public boolean addAdminRoom(HotelInfoVO vo) {
		mapper.insertAdminRoomImage(vo);
		return mapper.insertAdminRoom(vo) == 1;
	}

	@Override
	public boolean addAdminRoomImage(HotelInfoVO vo) {
		return false;
	}

	
}
