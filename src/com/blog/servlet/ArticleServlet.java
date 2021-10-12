package com.blog.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.domain.Article;
import com.blog.domain.User;
import com.blog.service.ArticleService;
import com.blog.service.UserService;
import com.blog.serviceimpl.ArticleServiceImpl;
import com.blog.serviceimpl.UserServiceImpl;

/**
 * Servlet implementation class ArticleServlet
 */
@WebServlet("/ArticleServlet")
public class ArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ArticleServlet() {
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
		if ("save".equals(method)) {
			String result = save(req, resp);
			if (result != null) {
				req.getRequestDispatcher(result).forward(req, resp);
			}
		} else if ("display".equals(method)) {
			String result = display(req, resp);
			if (result != null) {
				req.getRequestDispatcher(result).forward(req, resp);
			}

		}
	}

	public String save(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			User user = (User) req.getSession().getAttribute("user");
			String aAuthor = user.getUName();
			String aCategory = req.getParameter("aCategory");
			SimpleDateFormat sdf = new SimpleDateFormat();
			String aTime = sdf.format(new Date());
			String aHead = req.getParameter("AHead");
			String aContent = req.getParameter("aContent");
			
			Random random = new Random();
			int aID = random.nextInt(10000000);
			int aUId = user.getUId();
			int AIsOrigin = 1;
			
			Article article = new Article(aAuthor, aCategory, aTime, aHead, aContent, aID, aUId, AIsOrigin);
			ArticleService as = new ArticleServiceImpl();
			as.save(article);
			req.getSession().setAttribute("article", article);
			
			// 3.页面转发 提示信息
			resp.sendRedirect(req.getContextPath());
		} catch (Exception e) {
			e.printStackTrace();
			
			// 转发到 msg.jsp
			req.setAttribute("msg", "发布失败!");
			return "/js.jsp";
		}
		return null;
	}

	public String display(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String ACategory = null;
			if (req.getParameter("ACategory") != null) {

				ACategory = req.getParameter("ACategory");
			} else {
				ACategory = "趣闻";
			}
			ArticleService as = new ArticleServiceImpl();
			Article article = as.display(ACategory);

			// 查找成功，存入article
			req.getSession().setAttribute("articleall", article);
			// 跳转到 index.jsp
			resp.sendRedirect(req.getContextPath() + "/article.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("msg", "查找失败");
			return null;
		}

		return null;
	}

}
