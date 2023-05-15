package main.common.wook.pay.service;

import java.util.List;

import main.common.wook.pay.domain.PayVO;
import main.common.wook.pay.domain.paySuccessVO;

public interface PayPageService {
	public PayVO getRoomInfo(int roomId);
	public PayVO getPayMemberInfo(String memberId);
	public List<PayVO> getPayMemberCouponInfo(String memberId);
	public List<PayVO> getRoomInfoImages(int roomId);
	public int useCouponUpdate(int couponId);
	public int putResTable(paySuccessVO success);
	public int getResId();
	public int putPayTable(paySuccessVO success);
	public int usePointUpdate (paySuccessVO success);
	public int resCheck(paySuccessVO success);
	
}
