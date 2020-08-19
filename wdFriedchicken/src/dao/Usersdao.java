package dao;

import java.util.ArrayList;
import java.util.List;

import javabean.Users;

public class Usersdao extends Basedao {
	// ע���û�
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

	// ��¼�û� 0��û�ҵ� 1�ǹ���Ա 2����ͨ�û�
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

	// ����id��ѯ�û�
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

	// ����name��ѯ�û�
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

	// ��ѯȫ���û�
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

	// �޸��û���Ϣ
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
	// �û��޸�����
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

	// �û����������������
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

	// ɾ���û�
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
