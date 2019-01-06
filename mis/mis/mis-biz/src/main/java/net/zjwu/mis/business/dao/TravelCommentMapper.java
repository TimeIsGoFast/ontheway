package net.zjwu.mis.business.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import net.zjwu.mis.business.model.BookComment;
import net.zjwu.mis.business.model.TravelComment;
import tk.mybatis.mapper.common.Mapper;

public interface TravelCommentMapper extends Mapper<TravelComment>{

	List<TravelComment> getCommentsByTravelId(@Param(value="id")int id);

	/*List<TravelComment> getCommentsByBookId(@Param(value="id")int id);

	List<TravelComment> getHotBookComments();*/
   
}