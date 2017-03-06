package com.company.springmvc.services.staffinfo.po;

public class StaffInfoPo {
	private int id;
	private String name;
	private int age;
	private int sex;
	private double height;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex==1?"男":"女";
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	
	public String toString()
	{
		return id + " " + name + " " + age + " " + getSex() + " " + height;
	}
}
