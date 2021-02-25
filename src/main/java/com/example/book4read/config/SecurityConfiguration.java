package com.example.book4read.config;

import com.example.book4read.model.util.Role;
import com.example.book4read.service.userdetailservice.CustomUserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Autowired
    public void configAuthentication(
            AuthenticationManagerBuilder builder,
            CustomUserDetailService customUserDetailService) throws Exception
    {
        builder.userDetailsService(customUserDetailService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/admin**").hasAuthority(Role.ADMIN.name())
                .antMatchers("/resources/**", "/registration", "/login", "/store").permitAll()
                .antMatchers("/library","/account**","/published","/create-book")
                .hasAnyAuthority(Role.ADMIN.name(),Role.USER.name())
                .anyRequest().authenticated()
                .and()
                .formLogin().loginPage("/login")
                .and()
                .logout().deleteCookies("JSESSIONID")
                .and()
                .exceptionHandling().accessDeniedPage("/access-denied");
    }
}
