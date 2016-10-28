/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dao;

import com.mycompany.rent.dto.User;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author brennan
 */
public class UserDaoImpl implements UserDao {
    
     private JdbcTemplate jdbc;

    public UserDaoImpl(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }
    
    private static final String SQL_CREATE_USER = "insert into user(username, password, enabled) values (?,?,?)";

    @Override
    public User create(User user) {
        jdbc.update(SQL_CREATE_USER,
                user.getUsername(),
                user.getPassword(),
                user.getEnabled());

        Integer id = jdbc.queryForObject("SELECT LAST_INSERT_ID()", Integer.class);

        user.setId(id);

        return user;
    }
    
}
