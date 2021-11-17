package controller.attractions;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Attraction;
import persistence.AttractionDAO;
import persistence.commons.DAOFactory;

@WebServlet("/createattraction.do")
public class CreateAttractionServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3455721046062278592L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO validate data
		
		String name = request.getParameter("attracion-name");
		Integer cost = Integer.parseInt(request.getParameter("attracion-cost"));
		Double duration = Double.parseDouble(request.getParameter("attracion-duration"));
		Integer capacity = Integer.parseInt(request.getParameter("attracion-capacity"));
		
		Attraction attraction = new Attraction(-1, name, cost, duration, capacity);
		
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		attractionDAO.insert(attraction);
		
	}

}
