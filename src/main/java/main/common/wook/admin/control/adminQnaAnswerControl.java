package main.common.wook.admin.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.common.control.Control;
import main.common.wook.admin.domain.QnaVO;
import main.common.wook.admin.service.AdminService;
import main.common.wook.admin.service.AdminServiceImpl;

public class adminQnaAnswerControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int answerId = Integer.parseInt(req.getParameter("id"));
		String answerContent = req.getParameter("content");
		
		QnaVO vo = new QnaVO();
		vo.setAnswerContent(answerContent);
		vo.setQnaId(answerId);
		
		AdminService service = new AdminServiceImpl();
		int result = service.qnaAnswer(vo);
		
		
		return "adminQna.do";
	}

}
