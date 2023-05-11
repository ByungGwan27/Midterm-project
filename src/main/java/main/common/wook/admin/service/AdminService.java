package main.common.wook.admin.service;

import java.util.List;

import main.common.wook.admin.domain.AdminVO;
import main.common.wook.admin.domain.DeclarationVO;
import main.common.wook.admin.domain.QnaVO;
import main.common.wook.admin.domain.ReservationVO;
import main.common.wook.main.domain.HotelVO;
import main.common.wook.main.domain.MemberVO;

public interface AdminService {
	public AdminVO payCount();
	public AdminVO totalPay();
	public AdminVO monthPayCount();
	public AdminVO monthTotalPay();
	public List<MemberVO> allMemberInfo();
	public MemberVO memberInfo(MemberVO vo);
	public int modifyMemberInfo(MemberVO vo);
	public int adminDelMember(String memberId);
	public List<DeclarationVO> adminDecList();
	public DeclarationVO decInfo(int decId);
	public int decCancle(int decId);
	public int decAccept(int decId);
	public List<ReservationVO> adminResList();
	public ReservationVO adminResInfo(int resId);
	public int resAccept(int resId);
	public int resCancle(int resId);
	public List<QnaVO> qnaNoneAns(int page);
	public List<QnaVO> qnaComAns(int page);
	public int qnaAnswer(QnaVO qna);
	public int getQnaCount1();
	public int getQnaCount2();
	public int payCountChartData(String dateStr);
	public int payChartData(String dateStr);
	public int memberChartData(String dateStr);
	public List<ReservationVO> imminentRes();
	public int imminentResCount();
}
