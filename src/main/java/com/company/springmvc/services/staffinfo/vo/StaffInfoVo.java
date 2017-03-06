package com.company.springmvc.services.staffinfo.vo;

import java.util.ArrayList;
import java.util.List;

import com.company.springmvc.services.staffinfo.po.StaffInfoPo;

public class StaffInfoVo {
	private List<StaffInfoPo> staffInfos;
	public StaffInfoVo()
	{
		staffInfos = new ArrayList<StaffInfoPo>();
	}
	public List<StaffInfoPo> getStaffInfos() {
		return staffInfos;
	}
	public void setStaffInfos(List<StaffInfoPo> staffInfos) {
		this.staffInfos = staffInfos;
	}
	public void addStaffInfo(StaffInfoPo staffInfo) {
		this.staffInfos.add(staffInfo);
	}
	
	@Override
	public String toString() {
		String infos = "";
		for(StaffInfoPo s : staffInfos)
			infos += s + "<br/>";
		return infos;
	}
}
