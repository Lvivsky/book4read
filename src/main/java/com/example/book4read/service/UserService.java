package com.example.book4read.service;

import com.example.book4read.model.User;

import java.util.List;

public interface UserService {

    void save(User user);
    void edit(String id, User newUser);
    void remove(String id);

    List<User> findAll();

    User findUser(String email);

    boolean isExistByEmail(String email);
    boolean isExistById(String id);



}
