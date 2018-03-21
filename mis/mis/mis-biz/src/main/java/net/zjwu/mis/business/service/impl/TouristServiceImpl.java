package net.zjwu.mis.business.service.impl;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.zjwu.mis.base.service.impl.BaseServiceImpl;
import net.zjwu.mis.business.model.Tourist;
import net.zjwu.mis.business.service.TouristService;

@Service
@Transactional
public class TouristServiceImpl extends BaseServiceImpl<Tourist> implements TouristService {


}
