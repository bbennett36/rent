/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dto;

/**
 *
 * @author brennan
 */
public class Search {
    
    private String minBath;
    private String maxBath;
    
   private String minPrice;
   private String maxPrice;

    public String getMaxPrice() {
        return maxPrice;
    }

    public String getMinPrice() {
        return minPrice;
    }

    public void setMaxPrice(String maxPrice) {
        this.maxPrice = maxPrice;
    }

    public void setMinPrice(String minPrice) {
        this.minPrice = minPrice;
    }
   
    public String getMaxBath() {
        return maxBath;
    }

    public String getMinBath() {
        return minBath;
    }

    public void setMaxBath(String maxBath) {
        this.maxBath = maxBath;
    }

    public void setMinBath(String minBath) {
        this.minBath = minBath;
    }
    
    
}
