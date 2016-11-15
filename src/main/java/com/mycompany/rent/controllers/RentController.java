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

//    @RequestMapping(value = "/rentals", method = RequestMethod.GET)
//    public String rentPage(Map model, @RequestParam(value = "page", required = false) Integer pageNumber) {
//        
//        List<Integer> pages = getPages(25);// set limit of post per page
//        model.put("pages", pages);
//
//        Integer offset;
//        if (pageNumber == null) {
//            offset = 0;
//        } else {
//            offset = getOffset(pageNumber);
//        }
//
////        List<ForRent> rentals = forRentDao.allRentals();
//        List<ForRent> rentals = forRentDao.listRentalsWithLimit(offset);
//
//        model.put("rentals", rentals);
//
//        boolean rent = true;
//        model.put("rent", rent);
//        return "rent";
//    }
//    @RequestMapping(value = "/rentals/{pageid}")
//    public String edit(@PathVariable int pageid, Map model) {
//        int total = 25;
//        
//        if (pageid == 1) {
//        } else {
//            pageid = (pageid - 1) * total + 1;
//        }
//        List<ForRent> rentals = forRentDao.getRentalsByPage(pageid, total);
//
//        int count = forRentDao.getNumOfRentals();
//        int pages;
//
//        if (count % total == 0) {
//            pages = (count / total);
//        } else {
//            pages = 1 + (count / total);
//        }
//
//        model.put("pages", pages);
//
//        model.put("rentals", rentals);
//        boolean rent = true;
//        model.put("rent", rent);
//        return "rent";
//
//    }
    @RequestMapping(value = "/rentals", method = RequestMethod.GET)
    public String rentResults(@RequestParam(value = "page", required = false) Integer pageNumber, @RequestParam(value = "lat", required = false) String lat, @RequestParam(value = "lng", required = false) String lng, @RequestParam(value = "rad", required = false) String rad, Map model) {
        int total = 25;

        if (pageNumber == null) {
            pageNumber = 1;
        } else {
            pageNumber = (pageNumber - 1) * total + 1;
        }

        List<ForRent> rentals = new ArrayList();

        int count;
        if (lat == null && lng == null && rad == null) {
            rentals = forRentDao.getRentalsByPage(pageNumber, total);
            count = forRentDao.getNumOfRentals();
        } else {
            count = forRentDao.RentalRadiusCount(lat, lng, rad);
            rentals = forRentDao.RentalRadius(lat, lng, rad, pageNumber, total);
            
            String latParam = "&lat=" + lat;
            String lngParam = "&lng=" + lng;
            String radParam = "&rad=" + rad;

            model.put("latParam", latParam);
            model.put("lngParam", lngParam);
            model.put("radParam", radParam);
        }

        int page;

        if (count % total == 0) {
            page = (count / total);
        } else {
            page = 1 + (count / total);
        }

        List<Integer> pages = new ArrayList();
        for (int i = 1; i <= page; i++) {
            pages.add(i);
        }

        model.put("pages", pages);

        model.put("rentals", rentals);
        boolean rent = true;
        model.put("rent", rent);

        return "rent";

    }

    @RequestMapping(value = "/{lat}/{lng}/{rad}", method = RequestMethod.GET)
    public String rentPageByRadius(@RequestParam(value = "page", required = false) Integer pageNumber, @PathVariable String lat, @PathVariable String lng, @PathVariable String rad, Map model) {

        int total = 25;

        if (pageNumber == null) {
            pageNumber = 1;
        } else {
            pageNumber = (pageNumber - 1) * total + 1;
        }

        List<ForRent> rentals = forRentDao.RentalRadius(lat, lng, rad, pageNumber, total);

        int count = forRentDao.getNumOfRentals();
        int page;

        if (count % total == 0) {
            page = (count / total);
        } else {
            page = 1 + (count / total);
        }

        List<Integer> pages = new ArrayList();
        for (int i = 1; i <= page; i++) {
            pages.add(i);
        }

        model.put("pages", pages);

        String lat2 = lat;

//        List<ForRent> rentals = forRentDao.RentalRadius(lat, lng, lat2, rad);
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
        Integer reminder = (count % number);
        numberOfPages += reminder;
        List<Integer> pages = new ArrayList();
        for (int i = 1; i <= numberOfPages; i++) {
            pages.add(i);
        }
        return pages;
    }

}
