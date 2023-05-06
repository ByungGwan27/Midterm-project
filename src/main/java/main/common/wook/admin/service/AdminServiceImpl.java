package main.common.wook.admin.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;
import main.common.wook.admin.domain.AdminVO;
import main.common.wook.admin.domain.DeclarationVO;
import main.common.wook.admin.mapper.AdminMapper;
import main.common.wook.main.domain.MemberVO;

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

	@Override
	public List<MemberVO> allMemberInfo() {
		
		return mapper.allMemberInfo();
	}

	@Override
	public MemberVO memberInfo(MemberVO vo) {
		
		return mapper.memberInfo(vo);
	}

	@Override
	public int modifyMemberInfo(MemberVO vo) {
		
		return mapper.modifyMemberInfo(vo);
	}

	@Override
	public int adminDelMember(String memberId) {
		
		return mapper.adminDelMember(memberId);
	}

	@Override
	public List<DeclarationVO> adminDecList() {
	
		return mapper.adminDecList();
	}

	@Override
	public DeclarationVO decInfo(int decId) {
		
		return mapper.decInfo(decId);
	}

	@Override
	public int decCancle(int decId) {
		
		return mapper.decCancle(decId);
	}

	@Override
	public int decAccept(int decId) {
		return mapper.decAccept(decId);
	}

	

}
