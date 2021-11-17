package controller.attractions;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Attraction;
import persistence.AttractionDAO;
import persistence.commons.DAOFactory;

@WebServlet("/attractions/create.do")
public class CreateAttractionServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3455721046062278592L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/views/attractions/create-attraction.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//TODO validate data
		
		String name = req.getParameter("name");
		Integer cost = Integer.parseInt(req.getParameter("cost"));
		Double duration = Double.parseDouble(req.getParameter("duration"));
		Integer capacity = Integer.parseInt(req.getParameter("capacity"));
		
		Attraction attraction = new Attraction(-1, name, cost, duration, capacity);
		
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		attractionDAO.insert(attraction);
		
		resp.sendRedirect("/turismo/attractions.do");
	}

}
