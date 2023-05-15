package shin.post.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import main.common.control.DataSource;
import oracle.jdbc.proxy.annotation.Post;
import shin.post.domain.PostVO;
import shin.post.mapper.PostMapper;

public class PostServiceImpl implements PostService {
	
	SqlSession session = DataSource.getInstance().openSession(true);
	PostMapper mapper = session.getMapper(PostMapper.class);


	@Override
	public PostVO getPost(int postId) {
		mapper.updateCount(postId);
		return mapper.searchPost(postId);
	}


	@Override
	public int totalCount() {
	
		return mapper.getCount();
	}



	@Override
	public List<PostVO> postList(int postId) {
		return mapper.postList(postId);
	}


	@Override
	public List<PostVO> postmember() {
		return mapper.postmember();
	}



	@Override
	public List<PostVO> postmain() {
		return mapper.postmain();
	}


	@Override
	public List<PostVO> postmemberdetail() {
		return mapper.postmemberdetail();
	}


	@Override
	public List<PostVO> postdetail(int postId) {
		// TODO Auto-generated method stub
		return mapper.postdetail(postId);
	}



	@Override
	public Post getPostById(String postId) {
	    return mapper.getPostById(postId);
	}


	@Override
	public List<PostVO> getPostDetail(int postId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
