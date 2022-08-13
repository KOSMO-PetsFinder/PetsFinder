package smtp;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class SMTPAuth extends Authenticator{

	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
//		return new PasswordAuthentication("tjakffod", "akffod0907!");
		return new PasswordAuthentication("gnsl0127", "wjd01dn27!!");
	}
}
