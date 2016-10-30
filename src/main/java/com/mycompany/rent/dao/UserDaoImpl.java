/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dao;

import com.mycompany.rent.dto.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

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
    private static final String SQL_GET_USERNAME = "select * from user where username = ?";

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

    @Override
    public User getByUsername(String username) {
     return jdbc.queryForObject(SQL_GET_USERNAME, new UserMapper(), username);
    }
    
    private static final class UserMapper implements RowMapper<User> {

        @Override
        public User mapRow(ResultSet rs, int i) throws SQLException {

            User user = new User();

            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            user.setEnabled(rs.getInt("enabled"));

            return user;

        }

    }

}
