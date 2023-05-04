package shin.post.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import main.common.control.Control;
import main.common.control.PageDTO;
import shin.post.domain.PostVO;
import shin.post.service.PostService;
import shin.post.service.PostServiceImpl;

public class PostListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
//		String pageStr = req.getParameter("page");
//		pageStr = pageStr == null ? "1" : pageStr; 
//		int page = Integer.parseInt(pageStr);
//		
//		PostService service = new PostServiceImpl();
//		//int total = service.totalCount();
//		List<PostVO> list = service.postList(page); 
//		System.out.println(page);
//		//PageDTO dto = new PageDTO(page, total);
//		
//		String postId = req.getParameter("postId").trim();
//		PostVO post = service.getPost(Integer.parseInt(postId));
//		System.out.println(postId);
//		
//		req.setAttribute("postInfo", post);
//		
//		req.setAttribute("list", list);
		//req.setAttribute("pageInfo", dto);
		
		PostService service = new PostServiceImpl();
		List<PostVO> list = service.postList(); 
		req.setAttribute("list", list);
		System.out.println(list);
		
		return "postpage/postList.tiles";
	}

}
