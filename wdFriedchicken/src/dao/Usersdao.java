package dao;

import java.util.ArrayList;
import java.util.List;

import javabean.Users;

public class Usersdao extends Basedao {
	// 注册用户
	public int addusers(Users users) {
		int n = 0;
		super.getconn();
		try {
			pst = conn
					.prepareStatement("insert into users VALUES(null,?,?,?,?,?,2,100)");
			pst.setString(1, users.getUsername());
			pst.setString(2, users.getUserpwd());
			pst.setString(3, users.getUsersex());
			pst.setInt(4, users.getUserage());
			pst.setString(5, users.getUsertel());
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}

	// 登录用户 0是没找到 1是管理员 2是普通用户
	public int login(Users users) {
		int n = 0;
		super.getconn();
		try {
			pst = conn
					.prepareStatement("SELECT * FROM users WHERE username = ? AND userpwd = ?");
			pst.setString(1, users.getUsername());
			pst.setString(2, users.getUserpwd());
			rs = pst.executeQuery();
			if (rs.next() == true) {
				int s = rs.getInt("userqx");
				n = 1;
				if (s == 2) {
					n = 2;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}

	// 根据id查询用户
	public Users queryidusers(int id) {
		Users users = new Users();
		super.getconn();
		try {
			pst = conn.prepareStatement("SELECT * FROM users WHERE userid = ?");
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				users.setUserid(rs.getInt("userid"));
				users.setUsername(rs.getString("username"));
				users.setUserpwd(rs.getString("userpwd"));
				users.setUsersex(rs.getString("usersex"));
				users.setUserage(rs.getInt("userage"));
				users.setUsertel(rs.getString("usertel"));
				users.setUserqx(rs.getInt("userqx"));
				users.setUserjf(rs.getInt("userjf"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return users;
	}

	// 根据name查询用户
	public Users querynameusers(String name) {
		Users users = new Users();
		super.getconn();
		try {
			pst = conn
					.prepareStatement("SELECT * FROM users WHERE username = ?");
			pst.setString(1, name);
			rs = pst.executeQuery();
			if (rs.next()) {
				users.setUserid(rs.getInt("userid"));
				users.setUsername(rs.getString("username"));
				users.setUserpwd(rs.getString("userpwd"));
				users.setUsersex(rs.getString("usersex"));
				users.setUserage(rs.getInt("userage"));
				users.setUsertel(rs.getString("usertel"));
				users.setUserqx(rs.getInt("userqx"));
				users.setUserjf(rs.getInt("userjf"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return users;
	}

	// 查询全部用户
	public List<Users> queryallusers() {
		List<Users> list = new ArrayList<Users>();
		super.getconn();
		try {
			pst = conn.prepareStatement("SELECT * FROM users");
			rs = pst.executeQuery();
			while (rs.next()) {
				Users users = new Users();
				users.setUserid(rs.getInt("userid"));
				users.setUsername(rs.getString("username"));
				users.setUserpwd(rs.getString("userpwd"));
				users.setUsersex(rs.getString("usersex"));
				users.setUserage(rs.getInt("userage"));
				users.setUsertel(rs.getString("usertel"));
				users.setUserqx(rs.getInt("userqx"));
				users.setUserjf(rs.getInt("userjf"));
				list.add(users);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return list;
	}

	// 修改用户信息
	public int updateusers(Users users) {
		int n = 0;
		super.getconn();
		try {
			pst = conn
					.prepareStatement("UPDATE users SET userpwd=?,usersex = ?,userage=?,usertel =?"
							+ "WHERE userid = ?");
			pst.setString(1, users.userpwd);
			pst.setString(2, users.usersex);
			pst.setInt(3, users.userage);
			pst.setString(4, users.usertel);
			pst.setInt(5, users.userid);
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
	// 用户修改密码
		public int usersupdatepwd(String username,String usertel,String userpwd) {
			int n = 0;
			super.getconn();
			try {
				pst = conn
						.prepareStatement("UPDATE users SET userpwd=? "
								+ "WHERE username = ? and usertel = ?");
				pst.setString(1, userpwd);
				pst.setString(2, username);
				pst.setString(3, usertel);
				n = pst.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			super.closeAll();
			return n;
		}

	// 用户购买东西后积分增加
	public int updateuserjfnumber(int userid, int number) {
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("UPDATE users SET userjf=? "
					+ "WHERE userid = ? ");
			pst.setInt(1, number);
			pst.setInt(2, userid);
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}

	// 删除用户
	public int deleteuser(int id) {
		int n = 0;
		super.getconn();
		try {
			pst = conn.prepareStatement("delete from users where userid = ?");
			pst.setInt(1, id);
			n = pst.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		super.closeAll();
		return n;
	}
}
