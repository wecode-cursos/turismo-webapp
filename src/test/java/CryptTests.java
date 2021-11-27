import org.junit.Assert;
import org.junit.Test;

import utils.Crypt;

public class CryptTests {
	String password = "prueba";
	String passwordIncorrecto = "pruebe";

	@Test
	public void testHash() {
		Object hashed = Crypt.hash(password);
		Assert.assertFalse(hashed.equals(password));
	}

	@Test
	public void testMatch() {
		Assert.assertTrue(Crypt.match(password, Crypt.hash(password)));
		Assert.assertFalse(Crypt.match(passwordIncorrecto, Crypt.hash(password)));
	}

}
