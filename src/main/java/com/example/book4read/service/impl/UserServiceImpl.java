package com.example.book4read.service.impl;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Role;
import com.example.book4read.repository.UserRepository;
import com.example.book4read.service.UserService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Log4j
@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepo;
    private final PasswordEncoder passwordEncoder;

    @Autowired
    UserServiceImpl(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepo = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public void save(User user) {
        if (!userRepo.existsByEmail(user.getEmail())) {

            user.setRole(Role.USER);
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            user.setRegistrationTime(new Date(System.currentTimeMillis()));
            userRepo.save(user);

            log.info("Create user with id:" + user.getId() + " Email:" + user.getEmail());
        } else {
            log.error("User with email:" + user.getEmail() + " is already exist!");
        }
    }

    // TODO:: This option
    @Override
    public void edit(String id, User newUser) {
        log.info("try to edit income id:" + id + " save user: " + newUser.toString());
    }

    @Override
    public void remove(String id) {
        if (!userRepo.existsById(id)) {
            userRepo.deleteById(id);
            log.info("User with id:" + id + " deleted");
        } else {
            log.error("User with id:" + id + " not found!");
        }
    }

    @Override
    public List<User> findAll() {
        log.info("Try to get user list");
        return userRepo.findAll();
    }

    @Override
    public User findUser(String email) {
        if (userRepo.existsByEmail(email)) {
            log.info("Get user with email:" + email);
            return userRepo.findByEmail(email);
        } else {
            log.error("Try to get user with email:" + email);
            // TODO:: return to ACCOUNT NOT FOUND EXCEPTION
            return null;
        }
    }

    // TODO:: not sure about this
    @Override
    public boolean isExistByEmail(String email) {
        return false;
    }

    @Override
    public boolean isExistById(String id) {
        return false;
    }
}
