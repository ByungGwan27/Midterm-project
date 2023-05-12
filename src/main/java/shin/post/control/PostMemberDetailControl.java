package shin.post.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import shin.post.domain.PostVO;
import shin.post.service.PostService;
import shin.post.service.PostServiceImpl;

public class PostMemberDetailControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		PostService service = new PostServiceImpl();
		List<PostVO> postmemberdetail = service.postmemberdetail();
		req.setAttribute("postmemberdetail", postmemberdetail);
		
		return "postpage/postDetail.tiles";
	}

}
