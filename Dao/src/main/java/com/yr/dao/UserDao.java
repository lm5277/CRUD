package com.yr.dao;

import java.util.List;

import com.yr.entity.User;
import com.yr.mapp.UserMapp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class UserDao {

    @Autowired
    private UserMapp userMapp;

    /**
     * 查询
     *
     * @return
     */
    @Transactional
    public List<User> getUsers() {

        List<User> list = userMapp.getUserList();
        return list;

    }


    /**
     * 添加
     *
     * @param user
     */
    @Transactional
    public void addUser(User user) {
//		System.out.println("55555555555555");
        userMapp.getinsert(user);
    }


    /**
     * 删除
     *
     * @param user
     */
    @Transactional
    public void deleteUser(User user) {

        userMapp.getdelete(user);
    }

    /**
     * 修改
     *
     * @param user
     */
    @Transactional
    public void updateUser(User user) {
//		System.out.println("9999999");
        userMapp.getupdate(user);
    }


    /**
     * 回响
     *
     * @param id
     * @return
     */
    @Transactional
    public User getUserById(int id) {
        User user = userMapp.getByid(id);
        return user;
    }
}
