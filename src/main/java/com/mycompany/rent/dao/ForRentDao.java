/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dao;

import com.mycompany.rent.dto.ForRent;
import java.util.List;

/**
 *
 * @author brennan
 */
public interface ForRentDao {

    public ForRent create(ForRent forRent);

    public ForRent get(int id);

    public void update(ForRent forRent);

    public void delete(ForRent forRent);

    public List<ForRent> allRentals();

}