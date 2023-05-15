package shin.post.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.yedam.prod.domain.ProductVO;
//import com.yedam.prod.service.ProdService;
//import com.yedam.prod.service.ProdServiceImpl;

import main.common.control.Control;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;
import main.common.wook.main.domain.MemberVO;
import shin.post.domain.PostCommentVO;
import shin.post.domain.PostVO;
import shin.post.service.PostCommentService;
import shin.post.service.PostCommentServiceImpl;
import shin.post.service.PostService;
import shin.post.service.PostServiceImpl;

public class PostDetailControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PostService service = new PostServiceImpl();

		//포스트 게시물 리스트
		int postId = Integer.parseInt(req.getParameter("postId"));
		System.out.println(postId);
		List<PostVO> postdetail = service.postdetail(postId);
		System.out.println(postdetail);
		req.setAttribute("postdetail", postdetail);
		

		//int postId = Integer.parseInt(req.getParameter("postId"));
		
//		String postContent = req.getParameter("postContent");
//		String postTitle = req.getParameter("postTitle");
//		String postImages = req.getParameter("postImages");
//		String memberNickName = req.getParameter("memberNickName");
		
		//PostVO postdetail = service.postdetail();
//		getPost.setPostContent(postContent);
//		getPost.setPostTitle(postTitle);
//		getPost.setPostImages(postImages);
//		getPost.setMemberNickName(memberNickName);
	    
	    
//	    req.setAttribute("postdetail", postdetail);
//	    System.out.println("test :" + postdetail);
	    
	    return "postpage/postDetail.tiles";
	}	
		
}
