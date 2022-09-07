package com.yr.entity;


import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import java.util.Date;


public class User {
    private Integer id;
    private String name;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;
    @NumberFormat(pattern = "##,###,###")
    private double salary;
    private String headUrl;
    private Integer sex;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getHeadUrl() {
        return headUrl;
    }

    public void setHeadUrl(String headUrl) {
        this.headUrl = headUrl;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", name=" + name + ", birth=" + birth + ", salary=" + salary + ", headUrl=" + headUrl
                + ", sex=" + sex + "]";
    }


}
