package net.zjwu.mis.business.service;

import java.util.List;

import net.zjwu.mis.base.service.BaseService;
import net.zjwu.mis.business.model.BookComment;

public interface BookCommentService extends BaseService<BookComment>{

	List<BookComment> getCommentsByBookId(int id);

	List<BookComment> getHotBookComments();

}
