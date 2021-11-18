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

@WebServlet("/attractions/edit.do")
public class EditAttractionServlet extends HttpServlet {
	private AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();

	/**
	 * 
	 */
	private static final long serialVersionUID = 7598291131560345626L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));

		Attraction attraction = attractionDAO.findById(id);
		req.setAttribute("attraction", attraction);

		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher("/views/attractions/edit-attraction.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//TODO validate data
		Integer id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		Integer cost = Integer.parseInt(req.getParameter("cost"));
		Double duration = Double.parseDouble(req.getParameter("duration"));
		Integer capacity = Integer.parseInt(req.getParameter("capacity"));
		
		Attraction attraction = new Attraction(id, name, cost, duration, capacity);
		
		attractionDAO.update(attraction);
		
		resp.sendRedirect("/turismo/attractions.do");
	}
}
