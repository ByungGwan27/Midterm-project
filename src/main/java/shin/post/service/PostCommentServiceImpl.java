package shin.post.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import main.common.control.DataSource;
import shin.post.control.PostCommentDAO;
import shin.post.domain.PostCommentVO;
import shin.post.mapper.PostCommentMapper;

public class PostCommentServiceImpl implements PostCommentService {

	SqlSession session = DataSource.getInstance().openSession(true);
	PostCommentMapper mapper = session.getMapper(PostCommentMapper.class);

	@Override
	public List<PostCommentVO> getCommenties(int postId) {

		return mapper.postCommentList();
	}

	@Override
	public List<PostCommentVO> postCommentList() {

		return mapper.postCommentList();
	}

	@Override
	public boolean insertPostComment(PostCommentVO vo) {

		return mapper.insertPostComment(vo) == 1;
	}

	@Override
	public boolean deletePostComment(int commentId) {

		return mapper.deletePostComment(commentId) == 1;
	}

	@Override
	public boolean updatePostComment(PostCommentVO vo) {

		return mapper.updatePostComment(vo) == 1;
	}

	@Override
	public PostCommentVO getComment(int commentId) {

		return mapper.searchPostComment(commentId);
	}

}
