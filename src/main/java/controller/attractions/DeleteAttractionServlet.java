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

@WebServlet("/attractions/delete.do")
public class DeleteAttractionServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1537949074766873118L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));

		Attraction attraction = new Attraction(id, null, null, null, null);
				
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		attractionDAO.delete(attraction);

		resp.sendRedirect("/turismo/attractions.do");
	}


}
