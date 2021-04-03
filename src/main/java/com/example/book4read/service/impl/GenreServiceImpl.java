package com.example.book4read.service.impl;

import com.example.book4read.model.Genre;
import com.example.book4read.repository.GenreRepository;
import com.example.book4read.service.GenreService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Log4j2
@Service
public class GenreServiceImpl implements GenreService {

    private final GenreRepository repository;

    @Autowired
    public GenreServiceImpl(GenreRepository genreRepository) {
        this.repository = genreRepository;
    }

//    TODO:: ->

    @Override
    public Genre findGenreById(Long id) {
        return null;
    }

    @Override
    public void save(Genre genre) {

    }

    @Override
    public void remove(Genre genre) {

    }

    @Override
    public void edit(Long id, Genre newGenre) {

    }

    @Override
    public void isExist(Long id) {

    }
}
