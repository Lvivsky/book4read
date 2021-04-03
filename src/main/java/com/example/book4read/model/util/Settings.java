package com.example.book4read.model.util;

import com.example.book4read.model.User;
import com.sun.istack.NotNull;
import com.sun.istack.Nullable;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Data
@AllArgsConstructor
@Entity(name = "settings")
public class Settings {

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;


    public Settings () {
        this.showBirthday = false;
        this.showTwitter = false;
        this.showInstagram = false;
        this.showLikedBooksList = false;
        this.showReadNowList = false;
        this.showReadLaterList = false;
        this.showReadAlreadyList = false;
        this.showFollowers = true;
        this.showFollowing = true;

    }


    @OneToOne(mappedBy = "settings")
    private User user;

    @Column(name = "show_birthday", nullable = false)
    private boolean showBirthday;

    @Column(name = "show_twitter", nullable = false)
    private boolean showTwitter;

    @Column(name = "show_instagram", nullable = false)
    private boolean showInstagram;

    @Column(name = "show_liked_books_list", nullable = false)
    private boolean showLikedBooksList;

    @Column(name = "show_read_list_list", nullable = false)
    private boolean showReadNowList;

    @Column(name = "show_read_later_list", nullable = false)
    private boolean showReadLaterList;

    @Column(name = "show_read_already_list", nullable = false)
    private boolean showReadAlreadyList;

    @Column(name = "show_followers", nullable = false)
    private boolean showFollowers;

    @Column(name = "show_following", nullable = false)
    private boolean showFollowing;




}
