package shin.post.control;

import java.util.List;

import shin.post.domain.PostCommentVO;

public interface PostCommentDAO {

	 public List<PostCommentVO> getCommentList(int postId) throws Exception;
	    public void insertComment(PostCommentVO postCommentVO) throws Exception;
	    public void updateComment(PostCommentVO postCommentVO) throws Exception;
	    public void deleteComment(int commentId) throws Exception;

}
