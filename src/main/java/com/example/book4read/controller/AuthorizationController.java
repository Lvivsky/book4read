package com.example.book4read.controller;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Settings;
import com.example.book4read.service.SettingsService;
import com.example.book4read.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Log4j2
@Controller
public class AuthorizationController {

    private final UserService userService;
    private final SettingsService settingsService;


    @Autowired
    public AuthorizationController(UserService userService, SettingsService settingsService) {
        this.userService = userService;
        this.settingsService = settingsService;
    }

    @GetMapping("/signup")
    public String registration(Model model) {
        log.info("Try to register");
        model.addAttribute("userForm", new User());
        return "form/signup";
    }

    @PostMapping("/signup")
    public String signup(@ModelAttribute("userForm") User user, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            log.error("Registration error!");
            return "redirect:/form/signup";
        }

        userService.save(user);

        log.info("Registration success");

        return "redirect:/";
    }

    @GetMapping("/login")
    public String login() {
        return "form/login";
    }



}
