package com.heikki.springbootdemo.pojo;

import javax.persistence.*;

@Table(name = "`user`")
public class User {
    @Id
    @Column(name = "`userid`")
    private Integer userid;

    @Column(name = "`username`")
    private String username;

    @Column(name = "`password`")
    private String password;

    /**
     * @return userid
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * @param userid
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }
}