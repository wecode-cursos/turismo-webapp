package persistence;

import model.Attraction;
import persistence.commons.GenericDAO;

public interface AttractionDAO extends GenericDAO<Attraction> {
	
	Attraction findById(Integer id);

}
