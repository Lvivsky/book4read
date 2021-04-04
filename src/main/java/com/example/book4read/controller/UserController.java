package com.example.book4read.controller;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Settings;
import com.example.book4read.service.SettingsService;
import com.example.book4read.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Status;
import java.security.Principal;

@Log4j2
@Controller
public class UserController {

    private final UserService userService;
    private final SettingsService settingsService;


    @Autowired
    public UserController(UserService userService, SettingsService settingsService) {
        this.userService = userService;
        this.settingsService = settingsService;
    }


    @GetMapping("/profile")
    public String getPrincipalProfile(Principal principal, Model model) {
        User user = userService.findUser(principal.getName());
        model.addAttribute("user", user);
        model.addAttribute("newUserData", new User());
        model.addAttribute("settings", user.getSettings());

        model.addAttribute("followersCount", 30);
        model.addAttribute("followingCount", 30);

        return "my-profile";
    }



    @PostMapping("/profile/edit/fields")
    public String editProfile(@ModelAttribute("newUserData") User user, Principal principal) {
        User currentUser = userService.findUser(principal.getName());
        try {
            userService.edit(currentUser, user);
            return "redirect:/profile";
        } catch (Exception e) {
            log.error(e.getMessage());
            return "error/404";
        }
    }

    @PostMapping("/profile/edit/settings")
    public String saveSettings(
            Principal principal,
            @ModelAttribute("settings") Settings settings) {
        log.info("Change settings");
        settings.setId(userService.findUser(principal.getName()).getSettings().getId());
        settingsService.save(settings);
        return "redirect:/profile";
    }


    @GetMapping("/user/{id}")
    public String getProfilePage(@PathVariable("id") String id, Model model) {
        User user = userService.findUserById(id);


//        TODO:: followers and following count make static
        if (user.getSettings().isShowFollowers() & user.getSettings().isShowFollowing()) {
            model.addAttribute("followersCount", 30);
            model.addAttribute("followingCount", 30);
        }

        model.addAttribute("user", user);
        return "user-page";
    }

}
