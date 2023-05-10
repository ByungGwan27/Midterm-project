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
		
		AdminService service2 = new AdminServiceImpl();
		List<MemberVO> memberList = service2.allMemberInfo();
		
		PostCommentService service = new PostCommentServiceImpl();
		List<PostCommentVO> commentList = service.postCommentList();
		
		PostService service3 = new PostServiceImpl();
		List<PostVO> post = service3.postList();
		
		req.setAttribute("allMemberInfo", memberList);
		req.setAttribute("postCommentList", commentList);
		req.setAttribute("postList", post);
	
		System.out.println(memberList);
		System.out.println(commentList);
		System.out.println(post);
		
		return "postpage/postDetail.tiles";
	}

}
