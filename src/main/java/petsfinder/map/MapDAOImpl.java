package petsfinder.map;

import org.springframework.stereotype.Service;

/*
해당 인터페이스는 컨트롤러와 DAO 사이에서 매개역할을 하는 서비스 객체로 사용된다.
@Service 어노테이션은 빈을 자동으로 생성하기 위한 용도이지만 여기서는 단순히
역할을 명시하기 위한 표현으로 사용되었다. 따라서 필수사항은 아니다.
 */
@Service
public interface MapDAOImpl {
	
	public int write(MapDTO mapDTO);
	
	
	
}
