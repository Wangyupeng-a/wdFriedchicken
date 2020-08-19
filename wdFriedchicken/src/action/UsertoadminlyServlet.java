package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javabean.Adminly;
import javabean.Sp;
import javabean.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Adminlydao;
import dao.Spdao;

public class UsertoadminlyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UsertoadminlyServlet() {
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
		int userid = Integer.parseInt(request.getParameter("userid")) ;
			Users user = new Users();
			user.setUserid(userid);
			String adminlytel = request.getParameter("adminlytel");
			String adminlyemail = request.getParameter("adminlyemail");
			String adminlyneirong = request.getParameter("adminlyneirong");
			if (adminlytel==null||adminlyemail==null||adminlyneirong==null||
					adminlytel.equals("")||adminlyemail.equals("")||adminlyneirong.equals("")	) {
				request.setAttribute("massage", "请按要求输入！");
				request.getRequestDispatcher("/contact-us.jsp").forward(request, response);
			}else{
				Adminly adminly = new Adminly();
				adminly.setAdminlytel(adminlytel);
				adminly.setAdminlyemail(adminlyemail);
				adminly.setAdminlyneirong(adminlyneirong);
				adminly.setUser(user);
				Adminlydao adminlydao = new Adminlydao();
				int n = adminlydao.usertoadminly(adminly);
				if (n==1) {
					Spdao sdao = new Spdao();
					List<Sp> list = new ArrayList<Sp>();
					list = sdao.queryallSp();
					request.setAttribute("splist", list);
					request.getRequestDispatcher("/shop.jsp").forward(request, response);
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
