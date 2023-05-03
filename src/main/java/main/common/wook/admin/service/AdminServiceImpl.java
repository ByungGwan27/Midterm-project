package main.common.wook.admin.service;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;
import main.common.wook.admin.domain.AdminVO;
import main.common.wook.admin.mapper.AdminMapper;

public class AdminServiceImpl implements AdminService {
	SqlSession session = DataSource.getInstance().openSession(true); // true = 자동커밋
	AdminMapper mapper = session.getMapper(AdminMapper.class);

	@Override
	public AdminVO payCount() {
		return mapper.payCount();
	}

	@Override
	public AdminVO totalPay() {
		
		return mapper.totalPay();
	}

	@Override
	public AdminVO monthPayCount() {
		
		return mapper.monthPayCount();
	}

	@Override
	public AdminVO monthTotalPay() {
		
		return mapper.monthTotalPay();
	}

}
