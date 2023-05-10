package shin.post.control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import main.common.control.Control;
import shin.post.domain.PostCommentVO;
import shin.post.service.PostCommentService;
import shin.post.service.PostCommentServiceImpl;

public class PostCommentModifyControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PostCommentVO vo = new PostCommentVO();
		vo.setCommentContent(req.getParameter("commentContent"));
		vo.setPostId(Integer.parseInt(req.getParameter("postId")));

		PostCommentService service = new PostCommentServiceImpl();
		boolean result = service.modifyComment(vo);

		String json = "";

		Map<String, Object> map = new HashMap<>();
		if (result) {
			// search.
			vo = service.getComment(vo.getCommentId());

			map.put("retCode", "Success");
			map.put("data", vo);

		} else {
			map.put("retCode", "Fail");
		}

		Gson gson = new GsonBuilder().create(); // gson 객체.
		json = gson.toJson(map);

		return json + ".json";
	}


}
