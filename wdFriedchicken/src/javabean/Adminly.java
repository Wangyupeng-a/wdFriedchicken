package javabean;

public class Adminly {
	public int adminlyid;
	public Users user;
	public String adminlytel;
	public String adminlyemail;
	public String adminlyneirong;
	public String adminlytime;
	public String getAdminlytime() {
		return adminlytime;
	}
	public void setAdminlytime(String adminlytime) {
		this.adminlytime = adminlytime;
	}
	public int getAdminlyid() {
		return adminlyid;
	}
	public void setAdminlyid(int adminlyid) {
		this.adminlyid = adminlyid;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public String getAdminlytel() {
		return adminlytel;
	}
	public void setAdminlytel(String adminlytel) {
		this.adminlytel = adminlytel;
	}
	public String getAdminlyemail() {
		return adminlyemail;
	}
	public void setAdminlyemail(String adminlyemail) {
		this.adminlyemail = adminlyemail;
	}
	public String getAdminlyneirong() {
		return adminlyneirong;
	}
	public void setAdminlyneirong(String adminlyneirong) {
		this.adminlyneirong = adminlyneirong;
	}
	@Override
	public String toString() {
		return "Adminly [adminlyid=" + adminlyid + ", user=" + user
				+ ", adminlytel=" + adminlytel + ", adminlyemail="
				+ adminlyemail + ", adminlyneirong=" + adminlyneirong
				+ ", adminlytime=" + adminlytime + "]";
	}
	
}
