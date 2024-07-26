package com.sideproject.springworks.service;

import java.util.*;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sideproject.springworks.dto.MailDTO;


import java.util.List;
import java.util.Properties;


@Service   
public class MailMapper {
	private static SqlSessionFactory sqlSessionFactory;
	
	@Autowired
	private SqlSession sqlSession;		
	
	 @Autowired
	    private MailMapper mailMapper;

	    private final String host = "imap.example.com";
	    private final String username = "your-email@example.com";
	    private final String password = "your-password";

	/*
	 * public void checkMail() { Properties properties = new Properties();
	 * properties.put("mail.store.protocol", "imaps");
	 * 
	 * try { Session session = Session.getDefaultInstance(properties, null); Store
	 * store = session.getStore("imaps"); store.connect(host, username, password);
	 * 
	 * Folder inbox = store.getFolder("INBOX"); inbox.open(Folder.READ_ONLY);
	 * 
	 * Message[] messages = inbox.getMessages();
	 * 
	 * for (Message message : messages) { if (message instanceof MimeMessage) {
	 * MimeMessage mimeMessage = (MimeMessage) message; String subject =
	 * mimeMessage.getSubject(); String content = (String) mimeMessage.getContent();
	 * saveMail(subject, content); } }
	 * 
	 * inbox.close(false); store.close(); } catch (Exception e) {
	 * e.printStackTrace(); } }
	 * 
	 * public void saveMail(String subject, String content) { MailDTO mail = new
	 * MailDTO(); mail.setMail_writer(subject); mail.setContent(content);
	 * mailMapper.insertMail(mail); }
	 * 
	 * public void insertMail(MailDTO mail) {
	 * 
	 * mailMapper.insertMail(mail); }
	 * 
	 * 
	 * 
	 * public List<MailDTO> getAllMails() { return mailMapper.getAllMails(); }
	 */
	
}
