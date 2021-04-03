package com.example.book4read.service;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Settings;

import java.io.Serializable;

public interface SettingsService {

    void save(Settings settings);
    void remove(String id);

    Settings find(User user);

}
