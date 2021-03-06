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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Log4j
@Controller
public class ProfileController {

    private final UserService userService;

    @Autowired
    public ProfileController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/my-profile")
    public String myPage(Principal principal) {
        User user = userService.findUser(principal.getName());
        return "profile/"+user.getId();
    }

    @GetMapping("profile/{id}")
    public String profilePage(@PathVariable("id") String id, Model model) {

        User user = null;

        try {
            user = userService.findUserById(id);
        } catch (Exception e) {
            log.error("There is no user with id: "+id);
            return "redirect:/profile/"+id+"?error";
        }


        model.addAttribute("user", userService.findUser(id));

        return "profile";
    }

}
