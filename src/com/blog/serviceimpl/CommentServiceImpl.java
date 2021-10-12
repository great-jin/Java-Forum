package com.blog.serviceimpl;

import org.apache.ibatis.session.SqlSession;

import com.blog.dao.CommentDao;
import com.blog.domain.Comment;
import com.blog.service.CommentService;
import com.blog.util.MapperConfig;

public class CommentServiceImpl implements CommentService{
	private SqlSession session;
	public CommentServiceImpl() {
		session=MapperConfig.getSession();
		
	}
	public  int save(Comment comment) throws Exception {
		if(comment.getCUid()==0) {
			return 0;
		}else {
		int i=session.getMapper(CommentDao.class).save(comment);
			session.commit();
			session.close();
			return i;
		}
	}
	public  Comment display(int CArticleId) throws Exception {
		if(CArticleId==0) {
			return null ;
		}else
		{
			Comment comment=session.getMapper(CommentDao.class).display(CArticleId);
			session.commit();
			session.close();
			return comment;
		}
	}
}
