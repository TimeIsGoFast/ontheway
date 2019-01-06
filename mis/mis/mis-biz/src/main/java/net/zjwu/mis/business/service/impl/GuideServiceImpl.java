package net.zjwu.mis.business.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.business.model.Guide;
import net.zjwu.mis.business.service.GuideService;

@Service
@Transactional
public class GuideServiceImpl extends BaseServiceImpl<Guide> implements GuideService{

}
