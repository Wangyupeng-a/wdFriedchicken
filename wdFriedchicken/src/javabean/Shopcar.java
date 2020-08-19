package javabean;

public class Shopcar {
	public int carid;
	public Users user;
	public Sp sp;
	public int carspnumber;
	public int catok;
	public String cartime;
	public String getCartime() {
		return cartime;
	}
	public void setCartime(String cartime) {
		this.cartime = cartime;
	}
	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}

	public int getCarspnumber() {
		return carspnumber;
	}
	public void setCarspnumber(int carspnumber) {
		this.carspnumber = carspnumber;
	}
	public int getCatok() {
		return catok;
	}
	public void setCatok(int catok) {
		this.catok = catok;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Sp getSp() {
		return sp;
	}
	public void setSp(Sp sp) {
		this.sp = sp;
	}
	@Override
	public String toString() {
		return "Shopcar [carid=" + carid + ", user=" + user + ", sp=" + sp
				+ ", carspnumber=" + carspnumber + ", catok=" + catok
				+ ", cartime=" + cartime + "]";
	}

	
}
