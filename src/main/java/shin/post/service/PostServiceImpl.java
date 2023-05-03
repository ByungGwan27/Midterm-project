package shin.post.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;

import shin.post.domain.PostVO;
import shin.post.mapper.PostMapper;

public class PostServiceImpl implements PostService {
	
	SqlSession session = DataSource.getInstance().openSession(true);
	PostMapper mapper = session.getMapper(PostMapper.class);
	

	@Override
	public List<PostVO> postList(int page) {

		return mapper.postWithPage(page);
	}

	@Override
	public PostVO getPost(int postId) {
		mapper.updateCount(postId);
		return mapper.searchPost(postId);
	}

	@Override
	public int totalCount() {
	
		return mapper.getCount();
	}
	

	






	
	
	
}
