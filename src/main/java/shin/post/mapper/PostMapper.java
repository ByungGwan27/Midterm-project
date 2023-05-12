package shin.post.mapper;

import java.util.List;

import shin.post.domain.PostVO;

public interface PostMapper {
	
	//포스트 상세조회
	public List<PostVO> postList(int postId);
	public List<PostVO> postmember();
	public List<PostVO> postmain();
	public List<PostVO> postmemberdetail();
	//포스트 페이징 기능
	public List<PostVO> postWithPage(int page); 
	
	public PostVO searchPost(int postId);
	public int updateCount(int postId);
	public int getCount();
	
	
	
}
