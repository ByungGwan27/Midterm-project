package shin.notice.service;

import java.util.List;

import shin.notice.domain.NoticeVO;


public interface NoticeService {
	
	
	public List<NoticeVO> noticeList();
	public List<NoticeVO> noticeList(int page);
	public boolean addNotice(NoticeVO vo);
	public boolean modifyNotice(NoticeVO vo);
	public boolean removeNotice(int noticeId);
	public NoticeVO getNotice(int noticeId, int page);
	public int totalCount();
	
}
