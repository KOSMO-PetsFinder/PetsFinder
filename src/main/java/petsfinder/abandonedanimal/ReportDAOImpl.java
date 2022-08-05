package petsfinder.abandonedanimal;

import org.springframework.stereotype.Service;

@Service
public interface ReportDAOImpl {
	
	public int notifyForm(ReportDTO reportDTO);

	
}
