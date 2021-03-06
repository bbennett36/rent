/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rent.controllers;

import com.mycompany.rent.dao.ForRentDao;
import com.mycompany.rent.dao.UserDao;
import com.mycompany.rent.dto.ForRent;
import com.mycompany.rent.dto.User;
import java.security.Principal;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author brennan
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    private UserDao userDao;
    private ForRentDao forRentDao;

    @Inject
    public UserController(UserDao userDao, ForRentDao forRentDao) {
        this.userDao = userDao;
        this.forRentDao = forRentDao;
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signupPage(Map model) {

        return "signup";
    }

    @RequestMapping(value = "/new", method = RequestMethod.POST)
    public String newUser(User user) {

        user.setEnabled(1);
        userDao.create(user);

        return "redirect:/";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(Map model) {

        return "signup";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profilePage(Principal principal, Map model) {

        String name = principal.getName();

        User u = userDao.getByUsername(name);
        
        List<ForRent> rentals = forRentDao.rentalsByUserId(u.getId());
        
        model.put("rentals", rentals);

        return "profile";
    }

}
