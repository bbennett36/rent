/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.controllers;

import com.mycompany.rent.dao.ForRentDao;
import com.mycompany.rent.dto.ForRent;
import java.util.Map;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author brennan
 */
@Controller
@RequestMapping(value = "/list")
public class ListingController {

    private ForRentDao forRentDao;

    @Inject
    public ListingController(ForRentDao forRentDao) {
        this.forRentDao = forRentDao;
    }

    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public String listingPage(Map model) {

        boolean list = true;
        model.put("list", list);
        return "listing";
    }

    @RequestMapping(value = "/rent", method = RequestMethod.GET)
    public String rentPage(Map model) {

        boolean rent = true;
        model.put("rent", rent);
        return "rent";
    }

    @RequestMapping(value = "/sale", method = RequestMethod.GET)
    public String salePage(Map model) {

        boolean sale = true;
        model.put("sale", sale);
        return "sale";
    }

//    @RequestMapping(value = "/create", method = RequestMethod.POST)
//    public String createForRent(@ModelAttribute ForRent forRent, Map model) {
//
//        forRentDao.create(forRent);
//        return "redirect:/";
//    }
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public ForRent createForRent(@RequestBody ForRent forRent, Map model) {

        
        forRentDao.create(forRent);
        
        
        return forRent;
    }
    
    

}
