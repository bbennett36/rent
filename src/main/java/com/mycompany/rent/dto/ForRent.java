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
public class ForRent {
    
    private int id;
    private String streetAddress;
    private String streetName;
    private String city;
    private String state;
    private String zip;
    private int rent;
    private String lat;
    private String lng;
    private boolean mjFriendly;
    private boolean growFriendly;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLon() {
        return lng;
    }

    public void setLon(String lon) {
        this.lng = lon;
    }
    
    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the streetAddress
     */
    public String getStreetAddress() {
        return streetAddress;
    }

    /**
     * @param streetAddress the streetAddress to set
     */
    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    /**
     * @return the streetName
     */
    public String getStreetName() {
        return streetName;
    }

    /**
     * @param streetName the streetName to set
     */
    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the state
     */
    public String getState() {
        return state;
    }

    /**
     * @param state the state to set
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * @return the zip
     */
    public String getZip() {
        return zip;
    }

    /**
     * @param zip the zip to set
     */
    public void setZip(String zip) {
        this.zip = zip;
    }

    /**
     * @return the rent
     */
    public int getRent() {
        return rent;
    }

    /**
     * @param rent the rent to set
     */
    public void setRent(int rent) {
        this.rent = rent;
    }

    public boolean isMjFriendly() {
        return mjFriendly;
    }

    /**
     * @param mjFriendly the mjFriendly to set
     */
    public void setMjFriendly(boolean mjFriendly) {
        this.mjFriendly = mjFriendly;
    }

    /**
     * @return the growFriendly
     */
    public boolean isGrowFriendly() {
        return growFriendly;
    }

    /**
     * @param growFriendly the growFriendly to set
     */
    public void setGrowFriendly(boolean growFriendly) {
        this.growFriendly = growFriendly;
    }
    
    
    
}
