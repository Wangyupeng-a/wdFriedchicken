package dao;

import java.util.ArrayList;
import java.util.List;

import javabean.Address;

public class Addressdao extends Basedao{
	
	//添加地址
	public int addaddress(Address address){
		int n =0;
		super.getconn();
		try {
			pst = conn.prepareStatement("insert into address VALUES(null,?,?,?,?,?)");
			pst.setString(1, address.getAddresstel());
			pst.setString(2, address.getAddressshiqu());
			pst.setString(3, address.getAddressxiangxi());
			pst.setString(4, address.getAddressbeizhu());
			pst.setInt(5, address.getUser().getUserid());
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
	
	//根据用户id查询地址
	public List<Address> queryuseridaddress(int userid){
		List<Address> listaddress = new ArrayList<Address>();
		super.getconn();
		try {
			pst = conn.prepareStatement("select * from address where addressuserid = ?");
			pst.setInt(1, userid);
			rs = pst.executeQuery();
			while(rs.next()){
				Address address = new Address();
				address.setAddressshiqu(rs.getString("addressshiqu"));
				address.setAddressxiangxi(rs.getString("addressxiangxi"));
				address.setAddresstel(rs.getString("addresstel"));
				address.setAddressbeizhu(rs.getString("addressbeizhu"));
				listaddress.add(address);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return listaddress;
	}
	
}
