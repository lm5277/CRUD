package com.yr.mapp;

import java.util.List;

import com.yr.entity.User;

public interface UserMapp {
	
	/**
	 * 查询
	 * @return
	 */
	public List<User> getUserList();
	
	
	/**
	 * 添加
	 * @param user
	 */
	public void getinsert(User user);
	
	
	/**
	 * 删除
	 * @param
	 */
	public void getdelete(User user);
	
	
	/**
	 * 修改
	 * @param user
	 */
	public void getupdate(User user);
	
	
	/**
	 * 回响id
	 */
	public User getByid(int id);

}
