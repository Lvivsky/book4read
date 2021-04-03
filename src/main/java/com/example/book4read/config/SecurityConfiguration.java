package com.example.book4read.config;

import com.example.book4read.model.User;
import com.example.book4read.model.util.Role;
import com.example.book4read.service.userdetailservice.CustomUserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

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
        builder
                .userDetailsService(customUserDetailService)
                .passwordEncoder(passwordEncoder());

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/admin**","/admin/**")
                    .hasAnyAuthority(Role.ADMIN.name(), Role.SUPER_ADMIN.name())
                .antMatchers("/", "/resources/**", "/signup", "/login", "/user/**", "/404")
                    .permitAll()
                .antMatchers("/profile")
                    .hasAnyAuthority(Role.SUPER_ADMIN.name(), Role.ADMIN.name(),Role.USER.name())
                .anyRequest()
                    .authenticated()
                .and()
                    .formLogin()
                    .loginPage("/login")
                    .defaultSuccessUrl("/", true)
                    .failureUrl("/login")
                .and()
                    .logout()
                    .deleteCookies("JSESSIONID")
                .and()
                    .exceptionHandling()
                    .accessDeniedPage("/access-denied");
    }

}
