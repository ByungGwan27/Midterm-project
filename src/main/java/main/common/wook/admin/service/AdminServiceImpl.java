package main.common.wook.admin.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;
import main.common.wook.admin.domain.AdminVO;
import main.common.wook.admin.domain.DeclarationVO;
import main.common.wook.admin.domain.QnaVO;
import main.common.wook.admin.domain.ReservationVO;
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

	@Override
	public List<ReservationVO> adminResList() {
		
		return mapper.adminResList();
	}

	@Override
	public ReservationVO adminResInfo(int resId) {
	
		return mapper.adminResInfo(resId);
	}

	@Override
	public int resAccept(int resId) {
		return mapper.resAccept(resId);
	}

	@Override
	public int resCancle(int resId) {
		return mapper.resCancle(resId);
	}

	@Override
	public List<QnaVO> qnaNoneAns(int page) {
		return mapper.qnaNoneAns(page);
	}

	@Override
	public List<QnaVO> qnaComAns(int page) {
		return mapper.qnaComAns(page);
	}

	@Override
	public int qnaAnswer(QnaVO qna) {
		return mapper.qnaAnswer(qna);
	}

	@Override
	public int getQnaCount1() {
		return mapper.getQnaCount1();
	}

	@Override
	public int getQnaCount2() {
		return mapper.getQnaCount2();
	}

	@Override
	public int payCountChartData(String dateStr) {
		return mapper.payCountChartData(dateStr);
	}

	@Override
	public int payChartData(String dateStr) {
		return mapper.payChartData(dateStr);
	}

	@Override
	public int memberChartData(String dateStr) {
		return mapper.memberChartData(dateStr);
	}

	@Override
	public List<ReservationVO> imminentRes() {
		return mapper.imminentRes();
	}

	@Override
	public int imminentResCount() {
		return mapper.imminentResCount();
	}

	

	

}
