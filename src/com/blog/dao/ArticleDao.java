package com.blog.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.blog.domain.Article;

public interface ArticleDao {
	int save(Article article) throws Exception;

	Article display(String ACategory) throws Exception;

	
}
