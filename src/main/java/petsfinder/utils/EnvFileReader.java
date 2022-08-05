package petsfinder.utils;

import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.core.io.support.ResourcePropertySource;

public class EnvFileReader {

	public static String getValue(String envFile, String keyName) {
		// 1. 스프링 컨테이너 생성
		ConfigurableApplicationContext ctx = new GenericXmlApplicationContext();
		// 2. 스프링 컨테이너를 기반으로 Environment 객체 생성
		ConfigurableEnvironment env = ctx.getEnvironment();
		// 3. Environment 객체를 기반으로 외부파일을 읽을 준비를 한다.
		MutablePropertySources propertySources = env.getPropertySources();
		
		String envStr = "";
		
		try {
			/*
			 * classpath : 해당 키워드는 프로젝트를 배포했을 때 classes 폴더 하위로 Export 되는 경로를 가리킨다.
			 * 		프로젝트에서 작성했던 Java파일이나 XML 설정 파일 등이 포함된다.
			 */
			String envPath = "classpath:" + envFile;
			// 4. 외부 파일의 경로를 통해 addLast() 메소드로 propertySource를 읽어온다.
			propertySources.addLast(new ResourcePropertySource(envPath));
			// 5. 파일의 내용을 읽어 변수에 저장한다.
			envStr = env.getProperty(keyName);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return envStr;
	}
}
