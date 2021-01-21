package command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import dto.DTO;

public class BoardListCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		DAO dao = new DAO();
		ArrayList<DTO> boadrList = dao.boadrList();
		request.setAttribute("boadrList", boadrList);
	}
}