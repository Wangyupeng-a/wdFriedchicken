package action;

import java.io.IOException;
import java.io.PrintWriter;
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

public class FukuanServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public FukuanServlet() {
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
		request.setCharacterEncoding("utf-8");
		int userid =Integer.parseInt(request.getParameter("userid"));
		if ((userid==0)) {
			request.getRequestDispatcher("/users/login.jsp").forward(request, response);
		}else{
			List<Shopcar> listshopcar = new ArrayList<Shopcar>();
			Shopcardao  shopcardao = new Shopcardao();
			listshopcar = shopcardao.queryidShopcar(userid,0);
			request.setAttribute("listshopcar", listshopcar);
			//返回页面地址信息
			List<Address> listaddress = new ArrayList<Address>();
			Addressdao addressdao = new Addressdao();
			listaddress = addressdao.queryuseridaddress(userid);
			if (listaddress!=null&&listaddress.size()>0) {
				request.setAttribute("addressshiqu", listaddress.get(0).getAddressshiqu().substring(3));
				request.setAttribute("addressxiangxi", listaddress.get(0).getAddressxiangxi());
				request.setAttribute("addresstel", listaddress.get(0).getAddresstel());
			}
			request.getRequestDispatcher("/checkout.jsp").forward(request, response);
		}
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
