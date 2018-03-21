package net.zjwu.mis.business.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.zjwu.mis.business.model.BookComment;
import tk.mybatis.mapper.common.Mapper;

public interface BookCommentMapper extends Mapper<BookComment>{

	List<BookComment> getCommentsByBookId(@Param(value="id")int id);

	List<BookComment> getHotBookComments();
   
}