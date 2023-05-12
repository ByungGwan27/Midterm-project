package shin.post.service;

import java.util.List;

import shin.post.domain.PostVO;

public interface PostService {
	
	public List<PostVO> postList(int postId);
	public PostVO getPost(int postId);
	public int totalCount();
	
	public List<PostVO> postmember();
	public List<PostVO> postmain();
	public List<PostVO> postmemberdetail();
	
}
