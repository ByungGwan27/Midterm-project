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

public class PostDetailControl implements Control {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//		String prodCode = req.getParameter("prodCode");
//		System.out.println(prodCode);
//		ProdService service = new ProdServiceImpl();
//		ProductVO prod = service.getProduct(Integer.parseInt(prodCode));
//		req.setAttribute("productInfo", prod);
//		System.out.println(prod);
//		List<ProductVO> rlist = service.relatedList();
//		req.setAttribute("rlist", rlist);
//		
//		System.out.println(rlist);
		
		
		
		return "postpage/postDetail.tiles";
	}

}
