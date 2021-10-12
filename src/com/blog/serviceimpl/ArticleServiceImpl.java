package com.blog.serviceimpl;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.ibatis.session.SqlSession;

import com.blog.dao.ArticleDao;
import com.blog.dao.*;
import com.blog.domain.Article;
import com.blog.domain.User;
import com.blog.service.ArticleService;
import com.blog.util.MapperConfig;


import com.blog.util.DbcpUtil;

public class ArticleServiceImpl implements ArticleService {
	private SqlSession session;

    private ArcticleImpl act = new ArcticleImpl();

	public ArticleServiceImpl() {
		session = MapperConfig.getSession();
	}

	public int save(Article article) throws Exception {
		if (article.getAContent() == null || article.getAAuthor() == null) {
			return 0;
		} else {
			int i = session.getMapper(ArticleDao.class).save(article);
			session.commit();
			session.close();
			return i;
		}
	}

	public Article display(String ACategory) throws Exception {
		if (ACategory.trim().equals("")) {
			return null;
		} else {
			Article article = session.getMapper(ArticleDao.class).display(ACategory);
			session.commit();
			session.close();
			return article;
		}
	}


	@Override
	public List<Article> findAllArticle() throws SQLException {
		 List<Article> list = null;
	        try {
	            list = act.findAllArticle();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return list;
	}
}
