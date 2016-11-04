package com.mycompany.rent.controllers;

import com.mycompany.rent.dao.ForRentDao;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    
    private ForRentDao forRentDao;

    @Inject
    public HomeController(ForRentDao forRentDao) {
        this.forRentDao = forRentDao;
    }

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String homePage(Map model, @RequestParam(value = "page", required = false) Integer pageNumber) {
        
        
        
        boolean home = true;
        model.put("home", home);
        return "home";
    }
    
    
    
    
}
