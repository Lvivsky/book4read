package com.example.book4read.service;

import com.example.book4read.model.Genre;

public interface GenreService {

    Genre findGenreById(Long id);

    void save(Genre genre);
    void remove(Genre genre);
    void edit(Long id, Genre newGenre);

    void isExist(Long id);

}
