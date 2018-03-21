package net.zjwu.mis.business.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.business.dao.BookMapper;
import net.zjwu.mis.business.model.Book;
import net.zjwu.mis.business.model.BookComment;
import net.zjwu.mis.business.service.BookService;

@Transactional
@Service
public class BookServiceImpl extends BaseServiceImpl<Book> implements BookService {

	@Autowired
	private BookMapper bookMapper;
	@Override
	public List<Book> searchBook(String value) {
		return bookMapper.searchBook(value);
		
	}
	@Override
	public List<Book> searchBookBytype(int key) {
		return bookMapper.searchBookBytype(key);
	}
	@Override
	public List<Book> getHotBooks() {
		return bookMapper.getHotBooks();
	}
	@Override
	public void addUserBook(Integer id, int bookId) {
		bookMapper.addUserBook(id,bookId);
		
	}
	@Override
	public List<Integer> getMybookId(int userId, int id) {
		return bookMapper.getMybookId(userId,id);
	}
	@Override
	public List<Book> getMybooks(Integer id) {
		return bookMapper.getMybooks(id);
	}


}
