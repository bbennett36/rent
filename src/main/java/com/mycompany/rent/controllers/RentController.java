/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.controllers;

import com.mycompany.rent.dao.ForRentDao;
import com.mycompany.rent.dto.ForRent;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.mail.MessagingException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
    public String rentPage(Map model) {

        List<ForRent> rentals = forRentDao.allRentals();

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
}
