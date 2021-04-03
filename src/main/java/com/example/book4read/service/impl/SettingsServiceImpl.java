package com.example.book4read.service.impl;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Settings;
import com.example.book4read.repository.SettingsRepository;
import com.example.book4read.service.SettingsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SettingsServiceImpl implements SettingsService {

    private final SettingsRepository settingsRepository;

    @Autowired
    public SettingsServiceImpl(SettingsRepository settingsRepository) {
        this.settingsRepository = settingsRepository;
    }


    @Override
    public void save(Settings settings) {
        settingsRepository.save(settings);
    }

    @Override
    public void remove(String id) {
        settingsRepository.deleteById(id);
    }

    @Override
    public Settings find(User user) {
        return settingsRepository.findByUser(user);
    }
}
