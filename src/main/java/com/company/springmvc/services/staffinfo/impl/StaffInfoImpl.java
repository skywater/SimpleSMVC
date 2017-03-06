package com.company.springmvc.services.staffinfo.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.company.springmvc.services.staffinfo.dao.IStaffInfoMapper;
import com.company.springmvc.services.staffinfo.vo.StaffInfoVo;


/**
 * 用@Service注解后，可以这样调用：
 * 用@Resource或者@Autowired
 * private UserServiceImpl userServiceImpl;
 *
 */
@Service
public class StaffInfoImpl{

	@Resource
	private IStaffInfoMapper staffInfoMapper;
	
	public StaffInfoVo getStaffInfosVo(Integer id, String name){
		StaffInfoVo vo = new StaffInfoVo();
		vo.setStaffInfos(staffInfoMapper.getStaffInfos(id, name));
		return vo;
	}
}
