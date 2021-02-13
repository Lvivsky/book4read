package com.example.book4read.service;

import com.example.book4read.model.User;

import java.util.List;

public interface UserService {

    void add(User user);
    void edit(String id, User newUser);
    void remove(String id);

    List<User> findAll();

    User getUser(String email);

    boolean isExistEmail(String email);
    boolean isExistId(String id);



}
