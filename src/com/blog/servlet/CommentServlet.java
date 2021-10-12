package com.blog.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.domain.Article;
import com.blog.domain.Comment;
import com.blog.domain.User;
import com.blog.service.ArticleService;
import com.blog.service.CommentService;
import com.blog.serviceimpl.ArticleServiceImpl;
import com.blog.serviceimpl.CommentServiceImpl;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		 
		String method=req.getParameter("method");
		if("save".equals(method)) {
			String result = save(req,resp);
			if(result!=null) {
				req.getRequestDispatcher(result).forward(req, resp);
			}
		}else if("display".equals(method)) {
			String result = display(req,resp);
			if(result!=null) {
				req.getRequestDispatcher(result).forward(req, resp);
			}
			
		}
	}
	public String save(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		try {
			
			User user=(User)req.getSession().getAttribute("user");
			Article article=(Article) req.getSession().getAttribute("articleall");
			Random random=new Random();
			int CId =random.nextInt(100000);
			 int CUId=user.getUId();
			 int CArticleId=article.getAID();
			 SimpleDateFormat sdf=new SimpleDateFormat();
			 String CTime=sdf.format(new Date());
			String CContent=req.getParameter("CContent");
			Comment comment=new Comment(CId,CUId,CArticleId,CTime,CContent);
			 CommentService cs=new CommentServiceImpl();
			 cs.save(comment);
			 
			 req.getSession().setAttribute("comment", comment);
				//3.页面转发 提示信息
			resp.sendRedirect(req.getContextPath());
		}catch (Exception e) {
			e.printStackTrace();
			//转发到 msg.jsp
			req.setAttribute("msg", "发布失败!");
			return "/article.jsp";
		}
		return null;
	}
	public String display(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		try {
			Article article=(Article) req.getSession().getAttribute("articleall");
			int CArticleId=article.getAID();
			 CommentService cs=new CommentServiceImpl();
			Comment comment=cs.display(CArticleId);
		   		
			
			//查找成功，存入article
			req.getSession().setAttribute("comment", comment);
			//跳转到 index.jsp
			resp.sendRedirect(req.getContextPath()+"/article.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("msg", "查找失败");
			return null;
		}
		
		return null;
	}

}
