package shin.post.mapper;

import java.util.List;


import shin.post.domain.PostCommentVO;

public interface PostCommentMapper {
	
public List<PostCommentVO> postCommentList();
public List<PostCommentVO> getCommenties();
	
	// 댓글등록.
	public int insertPostComment(PostCommentVO vo);

	// 댓글삭제.
	public int deletePostComment(int commentId);

	//public int updatePostComment(@Param("postCommentId") int postCommentId, @Param("commentContent") String commentContent);
	public int updatePostComment(PostCommentVO vo);
	
	public PostCommentVO searchPostComment(int commentId);

}
