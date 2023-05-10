package gwan.mail.smtp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwan.loginpage.domain.LoginPageVO;
import gwan.loginpage.service.LoginPageService;
import gwan.loginpage.service.LoginPageServiceImpl;
import main.common.control.Control;

public class passwordResetControl implements Control {
	
	String code;
	
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LoginPageService service = new LoginPageServiceImpl();
		List<LoginPageVO> list = service.readEmail();
		
		//list에 null값이 있어서 값이 안받아와짐 -> 반복문 돌려서 눌값 제외하고 다시받기
		List<String> validEmailList = new ArrayList<>();
		for (LoginPageVO vo : list) {
		    if (vo != null) {
		        String memberEmail = vo.getMemberEmail();
		        validEmailList.add(memberEmail);
		    }
		}
		System.out.println(validEmailList);
		
		System.out.println(list);
		String json;
		
		String inputEmail = req.getParameter("btnL");
		System.out.println("값 받아와지냐?"+inputEmail);
		
		// 이메일 검증
		for (String email : validEmailList) {
		    System.out.println("반복문 도는중");
		    System.out.println(email);
		    if (email.equals(inputEmail)) {
		        mailSend();
		        System.out.println("난수 최종 테스트: " + code);

		        // 메일이 보내지고, 비밀번호가 변경됨
		        if (service.updatePw(code, inputEmail)) {
		            return "mainPage.do";
		        } else {
		            json = "{\"retCode\":\"noChange\"}";
		            return json + ".json";
		        }
		    }
		}
		
		
//		//email 검증
//		for (int i = 0; i < list.size(); i++) {
//			System.out.println("반복문 도는중");
//			System.out.println(list.get(i).getMemberEmail());
//			if(list.get(i).getMemberEmail().equals(inputEmail)) {
//				mailSend();
//				System.out.println("난수 최종 테스트"+code);
//				
//				//메일이 보내지고, pw가 변경됨
//				if(service.updatePw(code, inputEmail)) {
//					return "mainPage.do";
//				} else {
//					json = "{\"retCode\":\"noChange\"}";
//					return json + ".json";
//				}
//			}
//		}
		System.out.println("여기까지 도달!");
		json = "{\"retCode\":\""+inputEmail+"\"}";
		
		return json + ".json";
	}
	
	
	//메일 발송
	private void mailSend() {
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("servel0344@gmail.com", "mroawtonjcuzztwb");
			}
		});
		
		String receiver = "byunggwan827@gmail.com"; // 메일 받을 주소
		String title = "Traveller 비밀번호 찾기입니다.";
		
		//랜덤코드만들기
		Random rnd = new Random();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < 10; i++) {
			// rnd.nextBoolean() 는 랜덤으로 true, false 를 리턴. true일 시 랜덤 한 소문자를, false 일 시 랜덤 한 숫자를 StringBuffer 에 append 한다.
			if(rnd.nextBoolean()){
				buf.append((char)((int)(rnd.nextInt(26))+97));
			}else{
				buf.append((rnd.nextInt(10)));
			}
		}
		code = buf.toString();
		System.out.println(code);
		
		
		String content = "<h2>비밀번호 확인 코드입니다." + code + "</h2>";
		Message message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress("sendMail@gmail.com", "관리자", "utf-8"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
			message.setSubject(title);
			message.setContent(content, "text/html; charset=utf-8");
 
			Transport.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
