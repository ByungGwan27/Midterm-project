package jayk.hotelinfo.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import jayk.hotelinfo.domain.HotelInfoVO;
import jayk.hotelinfo.mapper.HotelInfoMapper;
import main.common.control.DataSource;

public class HotelInfoServiceImpl implements HotelInfoService {
	SqlSession session = DataSource.getInstance().openSession(true);
	HotelInfoMapper mapper = session.getMapper(HotelInfoMapper.class);
	
	//navList
	@Override
	public List<HotelInfoVO> navListLoca() {
		return mapper.navListLoca();
	}

	@Override
	public List<HotelInfoVO> navListThema() {
		return mapper.navListThema();
	}
	
	//hotelList
	@Override
	public List<HotelInfoVO> hotelList() {
		//mapper.hotelListLoca(hotelLocation1);
		return mapper.hotelList();
	}
	
	@Override
	public List<HotelInfoVO> hotelListLoca(String hotelLocation1) {
		return mapper.hotelListLoca(hotelLocation1);
	}

	@Override
	public List<HotelInfoVO> hotelListThema(String hotelThema) {
		return mapper.hotelListThema(hotelThema);
	}

	@Override
	public List<HotelInfoVO> hotelListNum(int roomMax, int roomMin) {
		return mapper.hotelListNum(roomMax, roomMin);
	}

	@Override
	public List<HotelInfoVO> hotelListPrice(int roomPrice) {
		return mapper.hotelListPrice(roomPrice);
	}

	//hotelInfo
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
	
	//adminHotelList
	@Override
	public List<HotelInfoVO> adminHotelList() {
		//return mapper.hotelListPage(page);
		return mapper.adminHotelList();
	}

	//adminHotelLinfo
	@Override
	public HotelInfoVO getAdminHotel(int hotelId) {
		return mapper.selectAdminHotel(hotelId);
	}
	
	@Override
	public HotelInfoVO getAdminHotelRoom(int hotelId, int roomId) {
		return mapper.selectAdminHotelRoom(hotelId, roomId);
	}

	//adminHotelInfoModify
	@Override
	public boolean modifyAdminHotel(HotelInfoVO vo) {
		return mapper.updateAdminHotel(vo) == 1;
	}
	
	@Override
	public boolean modifyAdminHotelRoom(HotelInfoVO vo) {
		int cnt = 0, cnt1 = 0;
		cnt = mapper.updateAdminHotelRoom(vo);
		cnt1 = mapper.updateAdminHotelRoomDetail(vo);
		if (cnt > 0 && cnt1 > 0) {
			return true;
		}
		return false;
		
	}
	
	//adminHotelInfoAdd
	@Override
	public boolean addAdminHotel(HotelInfoVO vo) {
		return mapper.insertAdminHotel(vo) == 1;
	}

	@Override
	public boolean addAdminRoom(HotelInfoVO vo) {
		int cnt = 0, cnt1 = 0, cnt2 = 0;
		cnt = mapper.insertAdminRoom(vo);
		cnt1 = mapper.insertAdminRoomImage(vo);
		cnt2 = mapper.insertAdminRoomDetail(vo);
		if (cnt > 0 && cnt1 > 0 && cnt2 > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean addAdminRoomImage(HotelInfoVO vo) {
		return false;
	}

	@Override
	public boolean addAdminRoomDetail(HotelInfoVO vo) {
		return false;
	}



	@Override
	public int totalCount() {
		return mapper.getCount();
	}

	@Override
	public boolean modifyAdiminHotelRoomDetail(HotelInfoVO vo) {
		return false;
	}

	@Override
	public List<HotelInfoVO> roomDetailList(int hotelId) {
		return mapper.roomDetailList(hotelId);
	}

	@Override
	public List<HotelInfoVO> bestReview(int hotelId) {
		return mapper.bestReview(hotelId);
	}
}
