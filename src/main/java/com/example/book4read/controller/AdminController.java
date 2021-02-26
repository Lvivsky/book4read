package com.example.book4read.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {



    @GetMapping("access-denied")
    public String accessDeniedPage() {
        return "access-denied";
    }

}
