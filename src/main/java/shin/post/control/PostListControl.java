package shin.post.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import main.common.control.Control;
import main.common.control.PageDTO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;
import main.common.wook.main.domain.MemberVO;
import shin.post.domain.PostVO;
import shin.post.service.PostService;
import shin.post.service.PostServiceImpl;

public class PostListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
//		String pageStr = req.getParameter("page");
//		pageStr = pageStr == null ? "1" : pageStr; 
//		int page = Integer.parseInt(pageStr);
		
		PostService service = new PostServiceImpl();
		//int total = service.totalCount();
		List<PostVO> list = service.postList(); 
	
		
		AdminService service2 = new AdminServiceImpl();
		List<MemberVO> memberList = service2.allMemberInfo();
		
		req.setAttribute("allMemberInfo", memberList);
		//System.out.println(page);
		//PageDTO dto = new PageDTO(page, total);
		
//		String postId = req.getParameter("postId");
//		PostVO post = service.getPost(Integer.parseInt(postId));
//		System.out.println(postId);
		
		//req.setAttribute("post", post);

		//req.setAttribute("pageInfo", dto);
		req.setAttribute("memberList", memberList);
		req.setAttribute("list", list);
		System.out.println(list);
		System.out.println(memberList);
		
		return "postpage/postList.tiles";
	}

}
