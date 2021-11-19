package model;

public class User {

	private Integer id;
	private String username, password;
	private Boolean admin;

	public User(Integer id, String username, String password, Boolean admin) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.admin = admin;
	}
	
	

	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}


	public Boolean isAdmin() {
		return admin;
	}
	
	
	public Boolean getAdmin() {
		return admin;
	}



	public void setAdmin(Boolean admin) {
		this.admin = admin;
	}



	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", admin=" + admin + "]";
	}



	public boolean checkPassword(String password) {
		return this.password.equals(password);
	}
	
}
