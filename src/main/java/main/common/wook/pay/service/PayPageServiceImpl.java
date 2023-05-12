package main.common.wook.pay.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;
import main.common.wook.admin.domain.ReservationVO;
import main.common.wook.pay.domain.PayVO;
import main.common.wook.pay.domain.paySuccessVO;
import main.common.wook.pay.mapper.PayPageMapper;

public class PayPageServiceImpl implements PayPageService{
	SqlSession session = DataSource.getInstance().openSession(true); // true = 자동커밋
	PayPageMapper mapper = session.getMapper(PayPageMapper.class);
	
	@Override
	public PayVO getRoomInfo(int roomId) {
		return mapper.getRoomInfo(roomId);
	}

	@Override
	public PayVO getPayMemberInfo(String memberId) {
		return mapper.getPayMemberInfo(memberId);
	}

	@Override
	public List<PayVO> getPayMemberCouponInfo(String memberId) {
		return mapper.getPayMemberCouponInfo(memberId);
	}

	@Override
	public List<PayVO> getRoomInfoImages(int roomId) {
		return mapper.getRoomInfoImages(roomId);
	}

	@Override
	public int useCouponUpdate(int couponId) {
		return mapper.useCouponUpdate(couponId);
	}

	@Override
	public int putResTable(paySuccessVO success) {
		return mapper.putResTable(success);
	}

	@Override
	public int getResId() {
		return mapper.getResId();
	}

	@Override
	public int putPayTable(paySuccessVO success) {
		return mapper.putPayTable(success);
	}

	@Override
	public int usePointUpdate(paySuccessVO success) {
		return mapper.usePointUpdate(success);
	}

}
