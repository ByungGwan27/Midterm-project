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

public class PostCommentAddControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memberId = req.getParameter("memberId");
		String commentContent = req.getParameter("commentContent");
		String postId = req.getParameter("postId");
		
		PostCommentVO vo = new PostCommentVO();
		vo.setMemberId(memberId);
		vo.setCommentContent(commentContent);
		vo.setPostId(Integer.parseInt(postId));
		
		PostCommentService service = new PostCommentServiceImpl();
		boolean result = service.addComment(vo);
		
		String json = "";
		
		Map<String, Object> map = new HashMap<>();
		
		if (result) {
		
		
			map.put("retCode", "Success");
			map.put("data", vo);
			
			
		}else {
			
			map.put("retCode", "Fail");
	 }
		
		Gson gson = new GsonBuilder().create(); 
		json = gson.toJson(map);
		
		return json + ".json";
	}

}
