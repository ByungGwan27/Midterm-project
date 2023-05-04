package shin.post.service;

import java.util.List;

import shin.post.domain.PostVO;

public interface PostService {
	
	public List<PostVO> postList();
	public List<PostVO> postList(int page);
	public PostVO getPost(int postId);
	//public int totalCount();
	
}
