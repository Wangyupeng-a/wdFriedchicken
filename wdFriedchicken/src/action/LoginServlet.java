package action;

import java.io.IOException;
import java.io.PrintWriter;

import javabean.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Usersdao;

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
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
		String anniu = request.getParameter("anniu");
		if (anniu.equals("denglu")) {
			String username  = request.getParameter("username");
			String userpwd  = request.getParameter("userpwd");
			Users u = new Users();
			u.setUsername(username);
			u.setUserpwd(userpwd);
			Usersdao udao = new Usersdao();
			int n = udao.login(u);
			HttpSession session = request.getSession();
			if (n==0) {
				//登录失败
				request.setAttribute("massage", "用户名或者密码错误！");
				request.getRequestDispatcher("/users/login.jsp").forward(request, response);
			}else if(n==1){
				//管理员登录
				request.getRequestDispatcher("/admin/adminindex.jsp").forward(request, response);
			}else{
				//用户登录
				u=udao.querynameusers(username);
				session.setAttribute("u", u);
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
		}else{
			request.getRequestDispatcher("/users/zhuce.jsp").forward(request, response);
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
