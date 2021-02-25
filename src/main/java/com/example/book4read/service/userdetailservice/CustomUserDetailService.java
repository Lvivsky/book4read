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
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findByEmail(email);

        if (Objects.isNull(user)) {
            log.error("Can`t find user by email:" + email);
            throw new UsernameNotFoundException("User with email:" + email + " not found!");
        } else {
            log.info("Authorization user by email: " + email);
            return new CustomUserDetails(user);
        }

    }
}
