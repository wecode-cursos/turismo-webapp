package model.nullobjects;

import model.User;

public class NullUser extends User {

	public static User build() {
		return new NullUser();
	}
	
	public NullUser() {
		super(0, "", "", 0, 0.0, false);
	}
	
	public boolean isNull() {
		return true;
	}
	
}
