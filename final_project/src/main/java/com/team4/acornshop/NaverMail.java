package com.team4.acornshop;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class NaverMail {
	public static void naverSendMail(String randomNum, String usersEmail) {
		String host = "smtp.naver.com";
		String user = "qorxjaos45@naver.com";
		String password = "whalstjr941214!";
		
//		Properties props = new Properties();
		Properties props = System.getProperties();
		//서버 정보를 설정
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 465);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true"); 
		props.put("mail.smtp.ssl.trust", "smtp.naver.com");

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(usersEmail));
			//메일 제목
			message.setSubject("에이콘 장터 이메일 본인인증 확인 메일입니다.");
			//메일 내용
			message.setText("본인인증 번호는"+randomNum+"입니다. 입력란에 정확히 입력해주세요!");
			//메일 보내기
			Transport.send(message);
			System.out.println("Success Message Send");
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
