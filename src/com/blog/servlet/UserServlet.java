package com.blog.servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.blog.domain.User;
import com.blog.service.UserService;
import com.blog.serviceimpl.UserServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String method = req.getParameter("method");
		if ("login".equals(method)) {
			String result = login(req, resp);
			if (result != null) {
				req.getRequestDispatcher(result).forward(req, resp);
			}
		} else if ("regist".equals(method)) {
			String result = regist(req, resp);
			if (result != null) {
				req.getRequestDispatcher(result).forward(req, resp);
			}
		}
	}

	public String login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 1.获取用户名和密码
			String username = request.getParameter("userName");
			String password = request.getParameter("password");

			// 2.调用service完成登录 返回值:user
			UserService us = new UserServiceImpl();
			User user = us.login(username, password);

			// 3.判断user 根据结果生成提示
			if (user == null) {
				// 用户名和密码不匹配
				request.setAttribute("msg", "用户名和密码不匹配");
				return "/login.jsp";
			}

			// 登录成功 保存用户登录状态
			request.getSession().setAttribute("user", user);
			
			// 跳转到 index.jsp
			RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "用户登录失败");
			return "/login.jsp";
		}

		return null;
	}

	public String regist(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// 1.封装对象
			int age = Integer.valueOf(request.getParameter("age"));
			String gender = request.getParameter("gender");
			String username = request.getParameter("username");
			String password = request.getParameter("password1");
			String telephone = request.getParameter("telephone");
			String vocation = request.getParameter("vocation");
			
			Random random = new Random();
			int uid = random.nextInt(10000000);
			User user = new User(username, password, gender, telephone, vocation, age, uid);
			
			// 2.调用service完成注册
			UserService us = new UserServiceImpl();
			us.regist(user);
			request.getSession().setAttribute("user", user);
			
			// 3.页面转发 提示信息
			response.sendRedirect(request.getContextPath());
		} catch (Exception e) {
			e.printStackTrace();
			
			// 转发到 msg.jsp
			request.setAttribute("msg", "用户注册失败!");
			return "/Register.jsp";
		}
		return null;
	}

}
