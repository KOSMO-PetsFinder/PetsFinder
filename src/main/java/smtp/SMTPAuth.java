package smtp;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuth extends Authenticator{

	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("각자 아이디", "각자 비번");
	}
}
