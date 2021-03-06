/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dao;

import com.mycompany.rent.dto.ForRent;
import com.mycompany.rent.dto.Search;
import java.util.List;

/**
 *
 * @author brennan
 */
public interface ForRentDao {

    public ForRent create(ForRent forRent);

    public ForRent get(int id);

    public List<ForRent> rentalsByUserId(int user_id);

    public List<ForRent> RentalRadius(String lat, String lng, String rad, int pageid, int total);
    
    public int RentalRadiusCount(String lat, String lng, String rad);

    public void update(ForRent forRent);

    public void delete(ForRent forRent);

    public List<ForRent> allRentals();

    public void addPhotos(int id, String fileName);

    public List<String> getImagePaths(int id);

    //pagenation
    public Integer getNumOfRentals();

    public List<ForRent> listRentalsWithLimit(Integer offset);

    public List<ForRent> getRentalsByPage(int pageid, int total, Search search);
    public List<ForRent> getRentalsByPage(int pageid, int total);

}
