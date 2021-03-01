package com.example.book4read.service.userdetailservice;

import com.example.book4read.model.User;
import com.example.book4read.repository.UserRepository;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Log4j
@Service
public class CustomUserDetailService implements UserDetailsService {

    private final UserRepository userRepository;

    @Autowired
    public CustomUserDetailService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) {
        User user = userRepository.findByEmail(username);

        if (Objects.isNull(user)) {
            log.error("Can`t find user by email:" + username);
            throw new UsernameNotFoundException("User with email:" + username + " not found!");
        } else {
            log.info("Authorization user by email: " + username);
            return new CustomUserDetails(user);
        }

    }
}
