package net.zjwu.mis.business.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.zjwu.mis.business.model.Book;
import tk.mybatis.mapper.common.Mapper;

public interface BookMapper extends Mapper<Book> {

	List<Book> searchBook(@Param(value="value")String value);

	List<Book> searchBookBytype(@Param(value="key")int key);

	List<Book> getHotBooks();

	void addUserBook(@Param(value="id")Integer id, @Param(value="bookId")int bookId);

	List<Integer> getMybookId(@Param(value="userId")int userId, @Param(value="bookId")int id);

	List<Book> getMybooks(@Param(value="id")Integer id);
}