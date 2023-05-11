package shin.notice.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import main.common.control.Control;
import shin.notice.domain.NoticeVO;
import shin.notice.service.NoticeService;
import shin.notice.service.NoticeServiceImpl;

public class AddNoticeControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// db 입력처리 / 목록이동.
		// 멀트파트요청: 요청정보, 저장경로, 최대파일 사이즈, 인코딩, 리네임정책인스턴스를 매개값으로 넣어줌.

		String saveDir = req.getServletContext().getRealPath("images");
		int maxSize = 5 * 1024 * 1024;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy rn = new DefaultFileRenamePolicy();
		// DefaultFileRenamePolicy
		// 똑같은 이름을 가진 파일이 존재하면 파일명에 1,2,3으로 붙게 해주는 클래스

		MultipartRequest multi //
				= new MultipartRequest(req, saveDir, maxSize, encoding, rn);
		
		String memberId = multi.getParameter("memberId");
		String noticeTitle = multi.getParameter("noticeTitle");
		String noticeContent = multi.getParameter("noticeContent");
		String writeDate = multi.getParameter("writeDate");
		// String attach = multi.getFilesystemName("attach");
		// 사용자의 입력값을 NoticeVO에 담아서 입력.
		NoticeVO vo = new NoticeVO();
		// vo.setAttachFile(attach);
		//vo.setNoticeId(Integer.parseInt(noticeId));
		vo.setNoticeTitle(memberId);
		vo.setNoticeTitle(noticeTitle);
		vo.setNoticeContent(noticeContent);
		vo.setMemberId(writeDate);
		
		
		NoticeService service = new NoticeServiceImpl();
		//boolean result = service.addNotice(vo);
		// 정상처리-> 목록으로 이동.

		if (service.addNotice(vo)) {
			System.out.println("성공");
			return "noticeList.do";

		} else {

			return "noticeAddForm.do";
		}
	}

}
