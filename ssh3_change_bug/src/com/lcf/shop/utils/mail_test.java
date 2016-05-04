package com.lcf.shop.utils;
import java.util.Date; 
import java.util.Properties; 
import javax.mail.Address; 
import javax.mail.Authenticator; 
import javax.mail.Message; 
import javax.mail.PasswordAuthentication; 
import javax.mail.Session; 
import javax.mail.Transport; 
import javax.mail.internet.InternetAddress; 
import javax.mail.internet.MimeMessage; 
 
 
public class mail_test 
{ 
    //mail server 
    private String host = "smtp.163.com"; 
    //mail account  
    private String username = "liucf5201"; 
    //password 
    private String password = "f13048883577"; 
     
    private String mail_head_name = "Head of test mail"; 
 
    private String mail_head_value = "Head of test mail"; 
 
    private String mail_to = "1204685666@qq.com"; 
 
    private String mail_from = "liucf5201@163.com"; 
 
    private String mail_subject = "subject of test mail"; 
 
    private String mail_body = "content of of test mail"; 
 
    private String personalName = "test_mail!"; 
 
    public mail_test() 
    { 
    } 
 
    
    public void send() throws Exception 
    { 
        try 
        { 
            Properties props = new Properties(); // 获取系统环境 
            Authenticator auth = new Email_Autherticator(); // 认证 
            props.put("mail.smtp.host", host); 
            props.put("mail.smtp.auth", "true"); 
            Session session = Session.getDefaultInstance(props, auth); 
            //设置session,和邮件服务器进行通讯。 
            MimeMessage message = new MimeMessage(session); 
           
            message.setSubject(mail_subject);  
            message.setText(mail_body); // 设置邮件正文 
            message.setHeader(mail_head_name, mail_head_value); // 设置邮件标题 
            message.setSentDate(new Date()); // 设置邮件发送日期 
            Address address = new InternetAddress(mail_from, personalName); 
            message.setFrom(address); // 设置邮件发送者的地址 
            Address toAddress = new InternetAddress(mail_to); // 设置邮件接收方的地址 
            message.addRecipient(Message.RecipientType.TO, toAddress); 
            Transport.send(message); // 发送邮件 
            System.out.println("send over!"); 
        } catch (Exception ex) 
        { 
            ex.printStackTrace(); 
            throw new Exception(ex.getMessage()); 
        } 
    } 
 
    /*
     * 用来进行服务器对用户的认证
     */ 
    public class Email_Autherticator extends Authenticator 
    { 
        public Email_Autherticator() 
        { 
            super(); 
        } 
 
        public Email_Autherticator(String user, String pwd) 
        { 
            super(); 
            username = user; 
            password = pwd; 
        } 
 
        public PasswordAuthentication getPasswordAuthentication() 
        { 
            return new PasswordAuthentication(username, password); 
        } 
    } 
 
    public static void main(String[] args) 
    { 
        mail_test sendmail = new mail_test(); 
        try 
        { 
            sendmail.send(); 
        } catch (Exception ex) 
        { 
        } 
    } 
 
} 