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
		
		/*
		 * AdminService service2 = new AdminServiceImpl(); List<MemberVO> memberList =
		 * service2.allMemberInfo();
		 * 
		 * PostCommentService service = new PostCommentServiceImpl();
		 * List<PostCommentVO> commentList = service.postCommentList();
		 * 
		 * int postId = Integer.parseInt(req.getParameter("postId"));
		 * 
		 * PostService service3 = new PostServiceImpl(); List<PostVO> postList =
		 * service3.postList(postId);
		
		req.setAttribute("allMemberInfo", memberList);
		req.setAttribute("postCommentList", commentList);
		req.setAttribute("postList", postList);
	
		System.out.println(memberList);
		System.out.println(commentList);
		System.out.println(postList);
		
		PostService service = new PostServiceImpl();
		List<PostVO> postmemberdetail = service.postmemberdetail();
		req.setAttribute("postmemberdetail", postmemberdetail);
		
		List<PostVO> postmember = service.postmember();
		//포스트 게시물 리스트
		List<PostVO> postmain = service.postmain();
		System.out.println("test"+ postmain);
		
		req.setAttribute("postmember", postmember);
		req.setAttribute("postmain", postmain);
			
		return "postpage/postDetail.tiles";
	}
	 */
		PostService service = new PostServiceImpl();
		List<PostVO> postmemberdetail = service.postmemberdetail();
		req.setAttribute("postmemberdetail", postmemberdetail);
		System.out.println("postmemberdetail" + postmemberdetail);

	
		List<PostVO> postmember = service.postmember();
		//포스트 게시물 리스트
		List<PostVO> postmain = service.postmain();
		System.out.println("postmain"+ postmain);
		
		req.setAttribute("postmember", postmember);
		req.setAttribute("postmain", postmain);
		

//		int postId = Integer.parseInt(req.getParameter("postId"));
//		
//		String postContent = req.getParameter("postContent");
//		String postTitle = req.getParameter("postTitle");
//		String postImages = req.getParameter("postImages");
//		String memberNickName = req.getParameter("memberNickName");
		
		//PostVO postdetail = service.postdetail();
//		getPost.setPostContent(postContent);
//		getPost.setPostTitle(postTitle);
//		getPost.setPostImages(postImages);
//		getPost.setMemberNickName(memberNickName);
	    //System.out.println("postContent" + postContent);
	    
	    
//	    req.setAttribute("postdetail", postdetail);
//	    System.out.println("test :" + postdetail);
	    
	    return "postpage/postDetail.tiles";
	}	
		
}
