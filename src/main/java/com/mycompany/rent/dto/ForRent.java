/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.dto;

import java.io.File;
import java.util.List;

/**
 *
 * @author brennan
 */
public class ForRent {

    private int id;
    private String streetAddress;
    private String city;
    private String state;
    private String zip;
    private int rent;
    private String lat;
    private String lng;
    private boolean mjFriendly;
    private boolean growFriendly;
    private File photo;
    private String fileName;
    private List<String> imagePaths;
    private int user_id;
    
    private String propType;
    private String unitNum;
    private boolean hideAddress;
    private String beds;
    private String baths;
    private String sqFt;
    private String leaseTerms;
    private String desc;
    
    

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    

    public List<String> getImagePaths() {
        return imagePaths;
    }

    public void setImagePaths(List<String> imagePaths) {
        this.imagePaths = imagePaths;
    }
    

    public String getFileName() {
        return fileName;
    }

    public String getLng() {
        return lng;
    }

    public File getPhoto() {
        return photo;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public void setLng(String lng) {
        this.lng = lng;
    }

    public void setPhoto(File photo) {
        this.photo = photo;
    }

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
        return getLng();
    }

    public void setLon(String lon) {
        this.setLng(lon);
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

    /**
     * @return the propType
     */
    public String getPropType() {
        return propType;
    }

    /**
     * @param propType the propType to set
     */
    public void setPropType(String propType) {
        this.propType = propType;
    }

    /**
     * @return the unitNum
     */
    public String getUnitNum() {
        return unitNum;
    }

    /**
     * @param unitNum the unitNum to set
     */
    public void setUnitNum(String unitNum) {
        this.unitNum = unitNum;
    }

    /**
     * @return the hideAddress
     */
    public boolean isHideAddress() {
        return hideAddress;
    }

    /**
     * @param hideAddress the hideAddress to set
     */
    public void setHideAddress(boolean hideAddress) {
        this.hideAddress = hideAddress;
    }

    /**
     * @return the beds
     */
    public String getBeds() {
        return beds;
    }

    /**
     * @param beds the beds to set
     */
    public void setBeds(String beds) {
        this.beds = beds;
    }

    /**
     * @return the baths
     */
    public String getBaths() {
        return baths;
    }

    /**
     * @param baths the baths to set
     */
    public void setBaths(String baths) {
        this.baths = baths;
    }

    /**
     * @return the sqFt
     */
    public String getSqFt() {
        return sqFt;
    }

    /**
     * @param sqFt the sqFt to set
     */
    public void setSqFt(String sqFt) {
        this.sqFt = sqFt;
    }

    /**
     * @return the leaseTerms
     */
    public String getLeaseTerms() {
        return leaseTerms;
    }

    /**
     * @param leaseTerms the leaseTerms to set
     */
    public void setLeaseTerms(String leaseTerms) {
        this.leaseTerms = leaseTerms;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

}
