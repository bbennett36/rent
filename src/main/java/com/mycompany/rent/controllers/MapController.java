/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.controllers;

import com.mycompany.rent.dao.ForRentDao;
import com.mycompany.rent.dto.ForRent;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author brennan
 */
@Controller
@RequestMapping(value = "/map")
public class MapController {

    private ForRentDao forRentDao;

    @Inject
    public MapController(ForRentDao forRentDao) {
        this.forRentDao = forRentDao;
    }
    
    @RequestMapping(value = "/radius", method = RequestMethod.GET)
    public String radiusSearch(@RequestParam("lati") int lati, @RequestParam("lng") int lng, @RequestParam("rad") int rad, Map model) {
        
        
        
        
        
        return "redirect: /";
    }

    @RequestMapping(value = "/data", method = RequestMethod.GET)
    public File homePage(Map model) throws IOException {

        List<ForRent> allRentals = new ArrayList();

        allRentals = forRentDao.allRentals();

        JSONObject responseDetailsJson = new JSONObject();
        JSONArray array = new JSONArray();
        for (ForRent f : allRentals) {
            array.add(f.getLat());
            array.add(f.getLon());
        }

        responseDetailsJson.put("data", (Object) array);//Here you can see the data in json format

        File file = new File("/home/brennan/_repos/rent/src/main/webapp/json/data.json");
        
        String path = file.getPath();

        try {

            // Writing to a file  
            file.createNewFile();
            FileWriter fileWriter = new FileWriter(file);

            fileWriter.write(responseDetailsJson.toJSONString());
            fileWriter.flush();
            fileWriter.close();

        } catch (IOException e) {

        }
        
        FileReader fr = new FileReader(file);

        return file;
    }
}
