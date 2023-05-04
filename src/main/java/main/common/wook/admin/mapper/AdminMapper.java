package main.common.wook.admin.mapper;

import java.util.List;

import main.common.wook.admin.domain.AdminVO;
import main.common.wook.main.domain.MemberVO;

public interface AdminMapper {
	public AdminVO payCount();
	public AdminVO totalPay();
	public AdminVO monthPayCount();
	public AdminVO monthTotalPay();
	public List<MemberVO> allMemberInfo();
}
