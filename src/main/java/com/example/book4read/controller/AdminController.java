package com.example.book4read.controller;

import com.example.book4read.service.UserService;
import com.example.book4read.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


public class AdminController {

    private final UserService userService;

    @Autowired
    public AdminController(UserServiceImpl userService) {
        this.userService = userService;
    }

    @GetMapping("/admin")
    public String admin() {
        return "admin/admin-page";
    }

    @GetMapping("/admin/users")
    public String adminUsers(Model model) {
        model.addAttribute("user", userService.findAll());
        return "admin/admin-users";
    }

}
