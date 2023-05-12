package main.common.wook.pay.service;

import java.util.List;

import main.common.wook.pay.domain.PayVO;

public interface PayPageService {
	public PayVO getRoomInfo(int roomId);
	public PayVO getPayMemberInfo(String memberId);
	public List<PayVO> getPayMemberCouponInfo(String memberId);
	public List<PayVO> getRoomInfoImages(int roomId);
	
}
