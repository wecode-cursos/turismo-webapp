package services;

import java.util.HashMap;
import java.util.Map;

import model.Attraction;
import persistence.AttractionDAO;
import persistence.commons.DAOFactory;

public class AttractionService {

	public Map<String, String> create(String name, Integer cost, Double duration, Integer capacity) {

		Map<String, String> errores = new HashMap<String, String>();

		if (cost <= 0) {
			errores.put("cost", "Debe ser positivo");
		}
		if (duration <= 0) {
			errores.put("duration", "Debe ser positivo");
		}
		if (capacity <= 0) {
			errores.put("capacity", "Debe ser positivo");
		}

		if (errores.isEmpty()) {
			Attraction attraction = new Attraction(-1, name, cost, duration, capacity);
			AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
			attractionDAO.insert(attraction);
			// XXX: si no devuelve "1", es que hubo más errores
		}
		
		return errores;
	}

}
