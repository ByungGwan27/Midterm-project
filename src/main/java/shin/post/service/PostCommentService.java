package shin.post.service;

import java.util.List;

import shin.post.domain.PostCommentVO;

public interface PostCommentService {
	
	public List<PostCommentVO> postCommentList();
	public List<PostCommentVO> getCommenties(int postId);
	public boolean addComment(PostCommentVO vo);
	public boolean removeComment(int commentId);
	public boolean modifyComment(PostCommentVO vo);
	public PostCommentVO getComment(int commentId);
	
}
