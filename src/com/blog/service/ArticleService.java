package com.blog.service;

import java.sql.SQLException;
import java.util.List;

import com.blog.domain.Article;

public interface ArticleService {
	int save(Article article)throws Exception;
	Article display(String ACategory)throws Exception;
	
	List<Article> findAllArticle() throws SQLException ;
}
