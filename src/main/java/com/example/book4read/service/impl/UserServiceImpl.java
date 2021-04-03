package com.example.book4read.service.impl;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Role;
import com.example.book4read.model.util.Settings;
import com.example.book4read.repository.UserRepository;
import com.example.book4read.service.UserService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.security.auth.login.AccountNotFoundException;
import java.util.*;

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

            user.setPassword(passwordEncoder.encode(user.getPassword()));

            userRepo.save(user);

            log.info("Created new USER {id: "+user.getId()+", Email: "+user.getEmail()+"}");
        }
        else {
            log.error("Email: "+user.getEmail()+" is already exist!");
        }
    }

    @Override
    public void edit(User currentUser, User user) {

        if (!user.getFirstName().isEmpty())
            currentUser.setFirstName(user.getFirstName());
        if (!user.getLastName().isEmpty())
            currentUser.setLastName(user.getLastName());
        if (user.getBirthday() != null)
            currentUser.setBirthday(user.getBirthday());
        if (!user.getStatus().isEmpty())
            currentUser.setStatus(user.getStatus());
        if (!user.getDescription().isEmpty())
            currentUser.setDescription(user.getDescription());
        if (!user.getInstagramAccount().isEmpty())
            currentUser.setInstagramAccount(user.getInstagramAccount());
        if (!user.getTwitterAccount().isEmpty())
            currentUser.setTwitterAccount(user.getTwitterAccount());
        if (!user.getPassword().isEmpty())
            currentUser.setPassword(passwordEncoder.encode(user.getPassword()));

        userRepo.save(currentUser);
        log.info("try to edit user");
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
        User user = null;
        try {
            user = userRepo.findByEmail(email);
            if (Objects.isNull(user)) {
                log.error("User find like null");
                throw new AccountNotFoundException("User is null");
            } else
                return user;
        } catch (AccountNotFoundException e) {
            log.error("User not found!");
            user.setEmail("USER_NOT_FOUND@example.com");
            user.setFirstName("USER_NOT_FOUND");
            user.setLastName("USER_NOT_FOUND");
            return user;
        }
    }

    @Override
    public User findUserById(String id) {
        log.info("Getting user by id:" + id);
        try {
            User user = userRepo.findUserById(id);
            log.info("User:" + user.getEmail());
            return user;
        } catch (Exception e) {
            log.error("User not found! " + e.getMessage());
            e.printStackTrace();
            return new User();
        }
    }

    // TODO:: not sure about this
    @Override
    public boolean isExistByEmail(String email) {
        return userRepo.existsByEmail(email);
    }

    @Override
    public boolean isExistById(String id) {
        return userRepo.existsById(id);
    }
}
