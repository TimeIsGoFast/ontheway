package net.zjwu.mis.business.service;

import java.util.List;

import net.zjwu.mis.base.service.BaseService;
import net.zjwu.mis.business.model.BookComment;
import net.zjwu.mis.business.model.Tourist;
import net.zjwu.mis.business.model.TravelComment;

public interface TouristService extends BaseService<Tourist>{

	List<Tourist> selectHout();

	List<TravelComment> getCommentsByTravelId(int id);

	

}
