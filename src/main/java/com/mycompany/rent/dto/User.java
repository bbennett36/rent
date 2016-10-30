/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dto;

import java.util.List;

/**
 *
 * @author brennan
 */
public class User {

    private int id;
    private String username;
    private String password;
    private int enabled;
    private List<ForRent> rentals;

    public List<ForRent> getRentals() {
        return rentals;
    }

    public void setRentals(List<ForRent> rentals) {
        this.rentals = rentals;
    }
    
    public int getEnabled() {
        return enabled;
    }

    public int getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsername(String username) {
        this.username = username;
    }

}
