package com.blog.dao;

import com.blog.domain.Comment;

public interface CommentDao {
	int save(Comment comment)throws Exception;
	Comment display(int cArticleId)throws Exception;
}
