package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import dto.DTO;

public class ContentViewCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String bId = request.getParameter("bId");
		
		DAO dao = new DAO();
		DTO contentView = dao.contentView(bId);
		
		request.setAttribute("contentView", contentView);
	}
}