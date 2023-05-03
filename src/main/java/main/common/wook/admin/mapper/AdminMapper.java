package main.common.wook.admin.mapper;

import main.common.wook.admin.domain.AdminVO;

public interface AdminMapper {
	public AdminVO payCount();
	public AdminVO totalPay();
	public AdminVO monthPayCount();
	public AdminVO monthTotalPay();
}
