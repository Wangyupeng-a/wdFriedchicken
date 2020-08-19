package action;

import java.io.IOException;
import java.io.PrintWriter;

import javabean.Users;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Usersdao;

public class ZhuceServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ZhuceServlet() {
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
		String username  = request.getParameter("username");
		String userpwd  = request.getParameter("userpwd");
		String userpwd1  = request.getParameter("userpwd1");
		String usersex  = request.getParameter("usersex");
		String userage  = request.getParameter("userage");
		String usertel  = request.getParameter("usertel");
		if (username==null||userpwd==null||userpwd1==null||usersex==null||userage==null||usertel==null
			||username.equals("")||userpwd.equals("")||userpwd1.equals("")||usersex.equals("")||userage.equals("")||usertel.equals("")
			) {
			request.setAttribute("massage", "ÓÐÎ´ÌîÐ´µÄÄÚÈÝ£¬ÇëÖØÐÂÌîÐ´£¡");
			request.getRequestDispatcher("/users/zhuce.jsp").forward(request, response);
		}else{
			Usersdao udao = new Usersdao();
			Users u = new Users();
			u = udao.querynameusers(username);
			if (u.getUserid()!=0) {
				request.setAttribute("massage", "×¢²áÊ§°Ü,¸ÃÓÃ»§ÒÑ´æÔÚ£¡");
				request.getRequestDispatcher("/users/zhuce.jsp").forward(request, response);
			}else {
				u.setUsername(username);
				u.setUserpwd(userpwd);
				u.setUsersex(usersex);
				u.setUserage(Integer.parseInt(userage));
				u.setUsertel(usertel);
				int n = udao.addusers(u);
				if (n==0) {
					request.setAttribute("massage", "×¢²áÊ§°Ü£¡");
					request.getRequestDispatcher("/users/zhuce.jsp").forward(request, response);
				}else{
					request.setAttribute("massage", "×¢²á³É¹¦ÇëµÇÂ¼£¡");
					request.getRequestDispatcher("/users/login.jsp").forward(request, response);
				}
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
