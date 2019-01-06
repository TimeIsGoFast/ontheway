package net.zjwu.mis.business.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.business.dao.TravelCommentMapper;
import net.zjwu.mis.business.model.BookComment;
import net.zjwu.mis.business.model.TravelComment;
import net.zjwu.mis.business.service.TravelCommentService;

@Service
@Transactional
public class TravelCommentServiceImpl extends BaseServiceImpl<TravelComment> implements TravelCommentService {
	
	@Autowired
	private TravelCommentMapper commentMapper;
	

}
