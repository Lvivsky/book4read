package com.example.book4read.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping("/access-denied")
    public String accessDeniedPage() {
        return "access-denied";
    }

    @GetMapping("/admin")
    public String admin() {
        return "admin/admin";
    }

    @GetMapping("/admin/statistic")
    public String adminStatistic() {
        return "admin/admin-statistic";
    }

    @GetMapping("/admin/users")
    public String adminUsers() {
        return "admin/admin-users";
    }

}
