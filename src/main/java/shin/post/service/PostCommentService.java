package shin.post.service;

import java.util.List;

import shin.post.domain.PostCommentVO;

public interface PostCommentService {
	
	public List<PostCommentVO> postCommentList();
	public List<PostCommentVO> getCommenties(int postId);
	public boolean insertPostComment(PostCommentVO vo);
	public boolean deletePostComment(int commentId);
	public boolean updatePostComment(PostCommentVO vo);
	public PostCommentVO getComment(int commentId);
	

	
}
