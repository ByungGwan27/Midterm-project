package shin.notice.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;
import shin.notice.domain.NoticeVO;
import shin.notice.mapper.NoticeMapper;

public class NoticeServiceImpl implements NoticeService {
	
	
	SqlSession session = DataSource.getInstance().openSession(true);
	NoticeMapper mapper = session.getMapper(NoticeMapper.class);

	@Override
	public List<NoticeVO> noticeList(int page) {
		
		return mapper.noticeWithPage(page);
	}

	@Override
	public boolean addNotice(NoticeVO vo) {
	
		return mapper.insertNotice(vo);
	}

	@Override
	public boolean modifyNotice(NoticeVO vo) {
		
		return mapper.updateNotice(vo) ==1;
	}

	@Override
	public boolean removeNotice(int noticeId) {
	
		return mapper.deleteNotice(noticeId) ==1;
	}

	@Override
	public NoticeVO getNotice(int noticeId, int page) {
		
		mapper.updateCount(noticeId);
		return mapper.searchNotice(noticeId);
	}

	@Override
	public int totalCount() {
	
		return mapper.getCount();
	}

}
