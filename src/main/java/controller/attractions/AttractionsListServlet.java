package controller.attractions;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Attraction;
import persistence.commons.DAOFactory;

@WebServlet("/attractions.do")
public class AttractionsListServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = -8346640902238722429L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Attraction> attractions = DAOFactory.getAttractionDAO().findAll();
		req.setAttribute("attractions", attractions);
		
		RequestDispatcher dispatcher = getServletContext()
    		      .getRequestDispatcher("/views/attractions/index.jsp");
    		    dispatcher.forward(req, resp);
		
	}
	
}
