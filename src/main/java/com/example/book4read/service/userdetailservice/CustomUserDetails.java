package com.example.book4read.service.userdetailservice;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Role;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.validation.constraints.Size;
import java.util.*;

@Log4j
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomUserDetails extends User implements UserDetails {

    private User user;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Set<Role> roles = user.getRole();
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        roles.forEach(role -> authorities.add(new SimpleGrantedAuthority(role.name())));

        return authorities;
    }

    @Override
    public String getId() {
        return this.user.getId();
    }

    @Override
    public String getUsername() {
        return this.user.getEmail();
    }



    @Override
    public String getPassword() {
        return this.user.getPassword();
    }

    @Override
    public @Size(min = 3, max = 24) String getFirstName() {
        return this.user.getFirstName();
    }

    @Override
    public @Size(min = 3, max = 24) String getLastName() {
        return super.getLastName();
    }

    @Override
    public Set<Role> getRole() {
        return this.user.getRole();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return !user.isBlocked();
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
