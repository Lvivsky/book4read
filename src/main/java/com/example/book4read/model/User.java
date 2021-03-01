package com.example.book4read.model;

import com.example.book4read.model.util.Role;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "user")
public class User {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
                                    private String id;

    @Column(name = "role")          private Role role;
    @Column(name = "email")         private String email;
    @Column(name = "password")      private String password;
    @Column(name = "first_name")    private String firstName;
    @Column(name = "last_name")     private String lastName;
    @Column(name = "phone_number")  private String phone;

    @Column(name = "registration_time")
    private Date registrationTime;

    @Column(name = "birthday", nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate birthday;


}
