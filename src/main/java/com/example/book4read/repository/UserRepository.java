package com.example.book4read.repository;

import com.example.book4read.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

    boolean existsByEmail(String email);
    User findByEmail(String email);
    User findUserById(String id);

}
