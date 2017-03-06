package com.company.springmvc.services.staffinfo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.company.springmvc.services.staffinfo.po.StaffInfoPo;


/**
 * 为什么可以省略
 * 如果spring配置文件中配置了自动扫描mapper接口的话 (MapperScannerConfigurer)就不需要@注解了，
 * 如果用的是sqlSessionDaoSupport自定义dao的话就需要注解注入
 *
 */
//@Repository
public interface IStaffInfoMapper {
	
	/**
	 * 获取员工信息
	 */
	public List<StaffInfoPo> getStaffInfos(@Param("id") Integer id, @Param("name") String name);
}
