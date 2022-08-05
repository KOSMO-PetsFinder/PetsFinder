package petsfinder.abandonedanimal;

import java.util.ArrayList;

import org.springframework.stereotype.Service;


@Service
public interface AbandonedAnimalDAOImpl {
	
	
	public AbandonedAnimalDTO abandonedAnimalView(AbandonedAnimalDTO abandonedAnimalDTO);
	public int getTotalCount();
	public ArrayList<AbandonedAnimalDTO> listPage(int s, int e);

	
}
