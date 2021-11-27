package utils;

import org.mindrot.jbcrypt.BCrypt;

public class Crypt {
	private static final int ROUNDS = 13;

	public static String hash(String password) {
		String salt = BCrypt.gensalt(ROUNDS);
		return BCrypt.hashpw(password, salt);
	}

	public static boolean match(String candidate, String hashed) {
		return BCrypt.checkpw(candidate, hashed);
	}
}
