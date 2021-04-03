package com.example.book4read.repository;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Settings;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SettingsRepository extends JpaRepository<Settings, String> {

    Settings findByUser(User user);
}
