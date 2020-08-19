package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javabean.Address;
import javabean.Shopcar;
import javabean.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Addressdao;
import dao.Shopcardao;
import dao.Usersdao;

public class FukuanokServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public FukuanokServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int userid =Integer.parseInt(request.getParameter("userid"));
		if ((userid==0)) {
			request.getRequestDispatcher("/users/login.jsp").forward(request, response);
		}else{
			List<Shopcar> listshopcar = new ArrayList<Shopcar>();
			Shopcardao  shopcardao = new Shopcardao();
			int n = shopcardao.updatecarok(userid);
			listshopcar = shopcardao.queryidShopcar(userid,1);
			request.setAttribute("listshopcar", listshopcar);
			//根据付款金额去增加积分
			int money = 100;
			Usersdao usersdao = new Usersdao();
			for (int i = 0; i <listshopcar.size(); i++) {
				money = money+listshopcar.get(i).getCarspnumber()*listshopcar.get(i).getSp().getSpjiage();
			}
			int jfok = usersdao.updateuserjfnumber(userid, money);
			if (jfok==0) {
				request.getRequestDispatcher("/checkout.jsp").forward(request, response);
			}
			//结束
			
			if (n==0) {
				request.getRequestDispatcher("/checkout.jsp").forward(request, response);
			}else{
				Addressdao addressdao = new Addressdao();
				List<Address> listaddress = new ArrayList<Address>();
				listaddress = addressdao.queryuseridaddress(userid);
				if (listaddress.size()==0) {
					Address address = new Address();
					String addresssheng = request.getParameter("addresssheng");
					String addressshiqu = request.getParameter("addressshiqu");
					String addressxiangxi = request.getParameter("addressxiangxi");
					String addresstel = request.getParameter("addresstel");
					String addressbeizhu = request.getParameter("addressbeizhu");
					address.setAddressshiqu(addresssheng+addressshiqu);
					address.setAddressxiangxi(addressxiangxi);
					address.setAddresstel(addresstel);
					address.setAddressbeizhu(addressbeizhu);
					Users user = new Users();
					user.setUserid(userid);
					address.setUser(user);
					int m = addressdao.addaddress(address);
				}
				request.getRequestDispatcher("/cartlist.jsp").forward(request, response);
			}
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
