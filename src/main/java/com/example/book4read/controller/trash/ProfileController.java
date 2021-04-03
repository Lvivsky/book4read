package com.example.book4read.controller.trash;

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
import java.util.Objects;

@Log4j

public class ProfileController {

    private final UserService userService;

    @Autowired
    public ProfileController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/my-profile")
    public String myPage(Principal principal, Model model) {
        User user = userService.findUser(principal.getName());
        if (Objects.isNull(user)) {
            log.error("My profile not found!");
            return "redirect:/shelf";
        } else {
            log.info("Get my profile: "+user.getEmail());
            model.addAttribute("user", user);
            return "profile";
        }
    }

    @GetMapping("profile/{id}")
    public String profilePage(@PathVariable("id") String id, Model model) {
        User user = userService.findUserById(id);

        if (Objects.isNull(user)) {
            log.error("There is no user with id: "+id);
            return "redirect:/profile/"+id+"?error";
        } else {
            model.addAttribute("user", userService.findUser(id));
            return "profile";
        }
    }
}
