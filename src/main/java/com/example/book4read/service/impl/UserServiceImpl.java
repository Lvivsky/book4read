package com.example.book4read.service.impl;

import com.example.book4read.model.User;
import com.example.book4read.repository.UserRepository;
import com.example.book4read.service.UserService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
public class UserServiceImpl implements UserService {

    private final UserRepository userRepo;

    @Autowired
    UserServiceImpl(UserRepository userRepository) {
        this.userRepo = userRepository;
    }


    @Override
    public void add(User user) {
        if (!userRepo.existsByEmail(user.getEmail())) {
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
    public User getUser(String email) {
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
    public boolean isExistEmail(String email) {
        return false;
    }

    @Override
    public boolean isExistId(String id) {
        return false;
    }
}
