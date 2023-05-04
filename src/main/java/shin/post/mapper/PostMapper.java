package shin.post.mapper;

import java.util.List;

import shin.post.domain.PostVO;

public interface PostMapper {

	public List<PostVO> postList();
	public List<PostVO> postWithPage(int page); 
	
	public PostVO searchPost(int postId);
//	public int updateCount(int postId);
//	public int getCount();
	
}
