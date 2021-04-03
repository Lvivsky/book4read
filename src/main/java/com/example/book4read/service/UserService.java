package com.example.book4read.service;

import com.example.book4read.model.User;

import java.util.List;

public interface UserService {

    void save(User user);
    void edit(User currentUser, User newUser);
    void remove(String id);

    List<User> findAll();

    User findUser(String email);
    User findUserById(String id);

    boolean isExistByEmail(String email);
    boolean isExistById(String id);



}
