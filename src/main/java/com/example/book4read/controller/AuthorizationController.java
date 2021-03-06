package com.example.book4read.controller;

import com.example.book4read.model.User;
import com.example.book4read.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Log4j2
@Controller
public class AuthorizationController {

    private final UserService userService;

    @Autowired
    public AuthorizationController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/registration")
    public String registration(Model model) {
        log.info("Try to register");
        model.addAttribute("userForm", new User());
        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User user, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            log.error("Registration error!");
            return "redirect:/registration";
        }

        userService.save(user);
        log.info("Registration success");

        return "redirect:/shelf";
    }

    @GetMapping("/login")
    public String login() {
        // Every browser calls this method same times
        return "login";
    }



}
