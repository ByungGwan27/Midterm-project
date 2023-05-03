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
		
		
		String pageStr = req.getParameter("page");
		pageStr = pageStr == null ? "1" : pageStr; //원하는 페이지 번호 입력하지 않을시 디폴트 1번 페이지 보이게 출력
		int page = Integer.parseInt(pageStr);
		
		PostService service = new PostServiceImpl();
		int total = service.totalCount();
		List<PostVO> list = service.postList(page); //원하는 페이지 번호 파라미터 입력
		
		PageDTO dto = new PageDTO(page, total);
		
		req.setAttribute("list", list);
		req.setAttribute("pageInfo", dto);
		
		
		
		return "postpage/postList.tiles";
	}

}
