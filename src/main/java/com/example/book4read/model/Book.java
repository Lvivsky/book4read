package com.example.book4read.model;

import com.example.book4read.model.util.Role;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "book")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "description")
    private String description;

    // TODO:: make change published date
    @Column(name = "published_date")
    private Date publishedDate;

    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "book_genre", joinColumns = @JoinColumn(name = "book_id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> role;

    @ManyToMany
    @JoinTable(
            name = "book_genre",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "genre_id"))
    private Set<Genre> genres;

    // User entities
    @ManyToMany(mappedBy = "publishedBooks", fetch = FetchType.LAZY)
    private Set<User> userPublishedSet;

    @ManyToMany(mappedBy = "likedBooks", fetch = FetchType.LAZY)
    private Set<User> userLikedSet;

    @ManyToMany(mappedBy = "readNow", fetch = FetchType.LAZY)
    private Set<User> userReadNowSet;

    @ManyToMany(mappedBy = "readLate", fetch = FetchType.LAZY)
    private Set<User> userReadLateSet;

    @ManyToMany(mappedBy = "readAlready", fetch = FetchType.LAZY)
    private Set<User> readAlreadySet;

}
