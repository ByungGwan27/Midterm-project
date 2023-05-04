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

}
