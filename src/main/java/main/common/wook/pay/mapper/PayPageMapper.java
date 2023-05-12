package main.common.wook.pay.mapper;

import java.util.List;

import main.common.wook.pay.domain.PayVO;

public interface PayPageMapper {
	public PayVO getRoomInfo(int roomId);
	public PayVO getPayMemberInfo(String memberId);
	public List<PayVO> getPayMemberCouponInfo(String memberId);
	public List<PayVO> getRoomInfoImages(int roomId);
}
