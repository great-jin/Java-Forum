package com.blog.dao;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.blog.domain.Article;

import com.blog.util.DbcpUtil;

public class ArcticleImpl {

	private static DataSource ds = DbcpUtil.getDataSource();
	
	public List<Article> findAllArticle() throws SQLException {
		String sql = "select * from tb_article";
		QueryRunner qrun = new QueryRunner(ds);
		return qrun.query(sql, new BeanListHandler<Article>(Article.class));
	}

}
