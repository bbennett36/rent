/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.controllers;

import com.mycompany.rent.dao.ForRentDao;
import com.mycompany.rent.dto.ForRent;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.mail.MessagingException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author brennan
 */
@Controller
@RequestMapping(value = "/rent")
public class RentController {

    private ForRentDao forRentDao;

    @Inject
    public RentController(ForRentDao forRentDao) {
        this.forRentDao = forRentDao;
    }

    @RequestMapping(value = "/rentals", method = RequestMethod.GET)
    public String rentPage(Map model, @RequestParam(value = "page", required = false) Integer pageNumber) {
        
        List<Integer> pages = getPages(25);// set limit of post per page
        model.put("pages", pages);

        Integer offset;
        if (pageNumber == null) {
            offset = 0;
        } else {
            offset = getOffset(pageNumber);
        }

//        List<ForRent> rentals = forRentDao.allRentals();
        List<ForRent> rentals = forRentDao.listRentalsWithLimit(offset);

        model.put("rentals", rentals);

        boolean rent = true;
        model.put("rent", rent);
        return "rent";
    }

    @RequestMapping(value = "/{lat}/{lng}/{rad}", method = RequestMethod.GET)
    public String rentPageByRadius(@PathVariable String lat, @PathVariable String lng, @PathVariable String rad, Map model) {
        
        String lat2 = lat;

        List<ForRent> rentals = forRentDao.RentalRadius(lat, lng, lat2, rad);

        model.put("rentals", rentals);

//        boolean rent = true;
//        model.put("rent", rent);
        return "rent";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String showRental(@PathVariable int id, Map model) {

        ForRent rental = forRentDao.get(id);

        model.put("rental", rental);

        return "show";

    }
    
     public Integer getOffset(Integer pageNumber) {
        Integer numberOfPosts = 25;
        Integer offset = (pageNumber * numberOfPosts) - numberOfPosts;
        return offset;
    }

    public List<Integer> getPages(Integer number) {

        Integer count = forRentDao.getNumOfRentals();
        Integer numberOfPages = (count / number);
        Integer reminder=(count%number);
        numberOfPages += reminder;
        List<Integer> pages = new ArrayList();
        for (int i = 1; i <= numberOfPages; i++) {
            pages.add(i);
        }
        return pages;
    }

}
