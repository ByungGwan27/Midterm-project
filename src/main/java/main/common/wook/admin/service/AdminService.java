package main.common.wook.admin.service;

import main.common.wook.admin.domain.AdminVO;

public interface AdminService {
	public AdminVO payCount();
	public AdminVO totalPay();
	public AdminVO monthPayCount();
	public AdminVO monthTotalPay();
}
