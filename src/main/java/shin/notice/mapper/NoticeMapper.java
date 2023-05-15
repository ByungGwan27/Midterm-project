package shin.notice.mapper;

import java.util.List;

import shin.notice.domain.NoticeVO;


public interface NoticeMapper {

	// 공지사항. CRUD: 입력, 조회, 수정, 삭제, 목록
	public List<NoticeVO> noticeList();
	//페이징 기능 넣어서 리스트 보여줌(건수 n개씩)
	public List<NoticeVO> noticeWithPage(int page); 
	public boolean insertNotice(NoticeVO vo);
	public int updateNotice(NoticeVO vo);
	public int noticeDelete(int noticeId);
	
	//단건조회
	public NoticeVO searchNotice(int noticeId);
	//조회수 증가
	public int updateCount(int noticeId);
	public int getCount();

}
