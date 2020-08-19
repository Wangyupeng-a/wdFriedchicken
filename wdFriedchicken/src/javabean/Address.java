package javabean;

public class Address {
	public int addressid;
	public String addresstel;
	public String addressshiqu;
	public String addressxiangxi;
	public String addressbeizhu;
	public Users user;
	@Override
	public String toString() {
		return "Address [addressid=" + addressid + ", addresstel=" + addresstel
				+ ", addressshiqu=" + addressshiqu + ", addressxiangxi="
				+ addressxiangxi + ", addressbeizhu=" + addressbeizhu
				+ ", user=" + user + "]";
	}
	public int getAddressid() {
		return addressid;
	}
	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}
	public String getAddresstel() {
		return addresstel;
	}
	public void setAddresstel(String addresstel) {
		this.addresstel = addresstel;
	}
	public String getAddressshiqu() {
		return addressshiqu;
	}
	public void setAddressshiqu(String addressshiqu) {
		this.addressshiqu = addressshiqu;
	}
	public String getAddressxiangxi() {
		return addressxiangxi;
	}
	public void setAddressxiangxi(String addressxiangxi) {
		this.addressxiangxi = addressxiangxi;
	}
	public String getAddressbeizhu() {
		return addressbeizhu;
	}
	public void setAddressbeizhu(String addressbeizhu) {
		this.addressbeizhu = addressbeizhu;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
}
