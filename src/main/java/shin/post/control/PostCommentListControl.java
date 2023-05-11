package shin.post.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import shin.post.domain.PostCommentVO;
import shin.post.service.PostCommentService;
import shin.post.service.PostCommentServiceImpl;

public class PostCommentListControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nid = req.getParameter("nid");

		PostCommentService service = new PostCommentServiceImpl();
		String json = "[";

		List<PostCommentVO> list = service.getCommenties(Integer.parseInt(nid));

		for (int i = 0; i < list.size(); i++) {
			// json 값에 += 로 값을 누적시킴
			json += "{\"commentId\":" + list.get(i).getCommentId() + ",";
			json += "\"postId\":" + list.get(i).getPostId() + ",";
			json += "\"commentContent\":\"" + list.get(i).getCommentContent() + "\",";
			json += "\"memberId\":\"" + list.get(i).getMemberId() + "\",";
			json += "\"writeDate\":\"" + list.get(i).getWriteDate() + "\"}";

			if (i + 1 != list.size()) {
				json += ",";
			}

		}
		json += "]";
		return json + ".json";
	}

}
