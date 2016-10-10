/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.controllers;

import com.mycompany.rent.dao.ForRentDao;
import com.mycompany.rent.dto.ForRent;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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

    @RequestMapping(value = "/sale", method = RequestMethod.GET)
    public String salePage(Map model) {

        boolean sale = true;
        model.put("sale", sale);
        return "sale";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public ForRent createForRent(@RequestBody ForRent forRent, Map model) {

        String realPathtoUploads = "/home/brennan/_repos/rent/src/main/webapp/uploads/";

//        String orgName = file.getOriginalFilename();
//        forRent.setFileName(orgName);

        forRentDao.create(forRent);

//        String filePath = (realPathtoUploads + forRent.getId() + orgName);
//        File dest = new File(filePath);
//        file.transferTo(dest);
        
        String rentId = Integer.toString(forRent.getId());

        return forRent;
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String addPhoto(@PathVariable int id, Map model) {
        
        ForRent rental = forRentDao.get(id);
        
        model.put("rental", rental);

        return "photo";

    }
    
    @RequestMapping(value = "/photo/{id}", method = RequestMethod.POST)
    public String addPhotos(@RequestParam("file") MultipartFile file, int id, Map model, HttpServletRequest request) throws IOException {
        
        if (!file.isEmpty()) {

            ForRent rent = forRentDao.get(id);

            String realPathtoUploads = "/home/brennan/_repos/rent/src/main/webapp/uploads/";

            String orgName = file.getOriginalFilename();
            rent.setFileName(orgName);
            forRentDao.update(rent);
            String filePath = (realPathtoUploads + rent.getId() + orgName);
            File dest = new File(filePath);
            file.transferTo(dest);
            

            return "home";
        }
        return "home";

    }

}
