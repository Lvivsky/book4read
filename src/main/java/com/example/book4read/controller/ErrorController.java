package com.example.book4read.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorController {

    @GetMapping("/access-denied")
    public String accessDeniedPage() {
        return "error/access-denied";
    }


    @GetMapping("/404")
    public String exception404() {
        return "error/404";
    }
}
