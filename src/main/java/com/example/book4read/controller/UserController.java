package com.example.book4read.controller;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Role;
import com.example.book4read.service.UserService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;
import java.time.Instant;
import java.util.Date;

@Log4j
@Controller
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/shelf")
    public String index() {
        return "index";
    }

    @GetMapping("/login")
    public String login(Model model, String logout, String error, Principal principal) {
        if (principal != null) {
            log.error("Singing in false!");
            return "redirect:/shelf";
        }

        log.info("Try to log in");
        if (error != null) {
            log.error("Email or password is not found!");
            model.addAttribute("error", "Username or password is incorrect.");
        }
        if (logout != null) {
            log.info("You have been logged out");
            model.addAttribute("message", "You have been logged out.");
        }
        return "login";
    }

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User user, BindingResult bindingResult) {
        log.info("Try to register");

        if (bindingResult.hasErrors()) {
            log.error("Registration error!");
            return "registration";
        }
        userService.save(user);
        log.info("Registration success");

        return "redirect:/shelf";
    }


}
