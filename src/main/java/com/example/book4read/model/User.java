package com.example.book4read.model;

import com.example.book4read.model.util.Role;
import com.example.book4read.model.util.Settings;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Data
@AllArgsConstructor
@Entity
@Table(name = "user")
public class User {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    public User() {
        this.authorRole = false;
        this.blocked = false;
//        this.registrationTime = new Date(System.currentTimeMillis());
        this.registrationTime = LocalDate.now();
        this.settings = new Settings();

        Set<Role> roles = new HashSet<>();
        roles.add(Role.USER);
//        roles.add(Role.ADMIN);
//        roles.add(Role.SUPER_ADMIN);
        this.role = roles;

    }

    @Column(name = "blocked", nullable = false)
    private boolean blocked;

    @Column(name = "is_author", nullable = false)
    private boolean authorRole;

    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> role;

    @Email
    @Size(min = 10, max = 64)
    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "password", nullable = false)
    private String password;

    @Size(min = 3, max = 24)
    @Column(name = "first_name", nullable = false)
    private String firstName;

    @Size(min = 3, max=24)
    @Column(name = "last_name")
    private String lastName;

    @Column(name = "phone_number")
    private String phone;

    @Column(name = "registration_time", nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate registrationTime;

    @Column(name = "birthday", nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate birthday;

    @Column(name = "status")
    @Size(max = 100)
    private String status;

    @Column(name = "description")
    @Size(max = 1000)
    private String description;

    @Column(name = "instagramAccount")
    @Size(max = 64)
    private String instagramAccount;

    @Column(name = "twitterAccount")
    @Size(max = 64)
    private String twitterAccount;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "setting_id", referencedColumnName = "id")
    private Settings settings;



//  Sets of
    @ManyToMany
    @JoinTable(
            name = "published_book",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "book_id"))
    private Set<Book> publishedBooks;

    @ManyToMany
    @JoinTable(
            name = "liked_book",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "book_id"))
    private Set<Book> likedBooks;

    @ManyToMany
    @JoinTable(
            name = "read_now_book",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "book_id"))
    private Set<Book> readNow;

    @ManyToMany
    @JoinTable(
            name = "read_late_book",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "book_id"))
    private Set<Book> readLate;

    @ManyToMany
    @JoinTable(
            name = "read_already_book",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "book_id"))
    private Set<Book> readAlready;



}
