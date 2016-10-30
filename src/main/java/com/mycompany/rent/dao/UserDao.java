/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dao;

import com.mycompany.rent.dto.User;

/**
 *
 * @author brennan
 */
public interface UserDao {
    
    public User create(User user);
    
    public User getByUsername(String username);
    
}
