/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.controllers;

import com.mycompany.rent.dao.ForRentDao;
import com.mycompany.rent.dto.ForRent;
import com.mycompany.rent.dto.UploadForm;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.enterprise.inject.Model;
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

 
        forRentDao.create(forRent);

        return forRent;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String addPhoto(@PathVariable int id, Map model) {

        ForRent rental = forRentDao.get(id);

        model.put("rental", rental);

        return "photo";

    }

    @RequestMapping(value = "/photo/{id}", method = RequestMethod.POST)
    public String addPhotos(@RequestParam("file") MultipartFile file, @PathVariable int id, Map model) throws IOException {

        if (!file.isEmpty()) {

            ForRent rent = forRentDao.get(id);

            String realPathtoUploads = "/home/brennan/_repos/rent/src/main/webapp/uploads/" + id;

            String orgName = file.getOriginalFilename();
            rent.setFileName(orgName);
            forRentDao.addPhotos(id, orgName);
            String filePath = (realPathtoUploads + rent.getId() + "_" + orgName);
            File dest = new File(filePath);
            file.transferTo(dest);

            return "home";
        }
        return "home";

    }

    @RequestMapping(value = "/savefiles", method = RequestMethod.POST)
    public String crunchifySave(@ModelAttribute("uploadForm") UploadForm uploadForm) throws IllegalStateException, IOException {
        
        String saveDirectory = "/home/brennan/_repos/rent/src/main/webapp/uploads/";

        List<MultipartFile> crunchifyFiles = uploadForm.getFiles();

        List<String> fileNames = new ArrayList<String>();
        
        ForRent fr = forRentDao.get(uploadForm.getProp_id());

        if (null != crunchifyFiles && crunchifyFiles.size() > 0) {
            for (MultipartFile multipartFile : crunchifyFiles) {

                String fileName = saveDirectory + uploadForm.getProp_id() + multipartFile.getOriginalFilename();
                if (!"".equalsIgnoreCase(fileName)) {
                    // Handle file content - multipartFile.getInputStream()
                    multipartFile
                            .transferTo(new File(fileName));
                    fileNames.add("/rent/uploads/" + uploadForm.getProp_id() + multipartFile.getOriginalFilename());
                }
            }
        }
        
        fr.setImagePaths(fileNames);
        
        
        //Iterate through ForRent imagePath and add each path to db
        for (String s : fr.getImagePaths()) {
            forRentDao.addPhotos(fr.getId(), s);
    }

//        map.addAttribute("files", fileNames);
        return "redirect:/";
    }

}
