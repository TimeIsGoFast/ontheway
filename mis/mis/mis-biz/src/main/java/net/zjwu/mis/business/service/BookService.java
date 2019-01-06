package net.zjwu.mis.business.service;

import java.util.List;

import net.zjwu.mis.base.service.BaseService;
import net.zjwu.mis.business.model.Book;
import net.zjwu.mis.business.model.BookComment;

public interface BookService extends BaseService<Book> {

	List<Book> searchBook(String value);

	List<Book> searchBookBytype(int key);

	List<Book> getHotBooks();

	void addUserBook(Integer id, int bookId);

	List<Integer> getMybookId(int userId, int id);

	List<Book> getMybooks(Integer id);

}
