package net.zjwu.mis.business.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.business.dao.TouristMapper;
import net.zjwu.mis.business.dao.TravelCommentMapper;
import net.zjwu.mis.business.model.BookComment;
import net.zjwu.mis.business.model.Tourist;
import net.zjwu.mis.business.model.TravelComment;
import net.zjwu.mis.business.service.TouristService;

@Service
@Transactional
public class TouristServiceImpl extends BaseServiceImpl<Tourist> implements TouristService {

	@Autowired
	private TouristMapper touristMapper;
	@Autowired
	private TravelCommentMapper touristService;
	@Override
	public List<Tourist> selectHout() {
		return touristMapper.selectHout();
	}
	@Override
	public List<TravelComment> getCommentsByTravelId(int id) {
		return touristService.getCommentsByTravelId(id);
	}
	

}
