package com.blog.service;

import com.blog.domain.Comment;

public interface CommentService {
int save(Comment comment)throws Exception;
Comment display(int CArticleId)throws Exception;
}
