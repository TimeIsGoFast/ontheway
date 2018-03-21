package net.zjwu.mis.business.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.business.dao.BookCommentMapper;
import net.zjwu.mis.business.model.BookComment;
import net.zjwu.mis.business.service.BookCommentService;

@Service
@Transactional
public class BookCommentServiceImpl extends BaseServiceImpl<BookComment> implements BookCommentService {
	
	@Autowired
	private BookCommentMapper commentMapper;
	@Override
	public List<BookComment> getCommentsByBookId(int id) {
		return commentMapper.getCommentsByBookId(id);
	}
	@Override
	public List<BookComment> getHotBookComments() {
		return commentMapper.getHotBookComments();
	}

}
