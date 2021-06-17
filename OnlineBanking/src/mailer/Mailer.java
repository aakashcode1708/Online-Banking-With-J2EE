package mailer;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mailer {
public static void sendMail(String from,String password,String to,String sub,String msg)
{
Properties prop=new Properties();
prop.put("mail.smtp.host","smtp.gmail.com");
prop.put("mail.smtp.socketFactory.port","587");
prop.put("mail.socketFactory,class","javax.net.ssl.SSLSocketFactory");
prop.put("mail.smtp.auth","true");
prop.put("mail.smtp.starttls.enable","true");
prop.put("mail.smtp.port","587");

Session session=Session.getDefaultInstance(prop, new javax.mail.Authenticator()
{
protected PasswordAuthentication getPasswordAuthentication()
{
   return new PasswordAuthentication(from, password);
}
});
//compose message
try {
MimeMessage message=new MimeMessage(session);
message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
message.setSubject(sub);
message.setText(msg);

Transport.send(message);


} catch (MessagingException e) {
throw new RuntimeException(e);
}
}
}
