package shin.post.service;

import java.util.List;

import oracle.jdbc.proxy.annotation.Post;
import shin.post.domain.PostVO;

public interface PostService {
	
	public List<PostVO> postList(int postId);
	public PostVO getPost(int postId);
	public int totalCount();
	
	public List<PostVO> postmember();
	public List<PostVO> postmain();
	public List<PostVO> postmemberdetail();
	public List<PostVO> postdetail();
	public List<PostVO> getPostDetail(int postId);
	public Post getPostById(String postId);
	
}
