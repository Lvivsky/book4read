package com.example.book4read.service.impl;

import com.example.book4read.model.Book;
import com.example.book4read.repository.BookRepository;
import com.example.book4read.service.BookService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Log4j2
@Service
public class BookServiceImpl implements BookService {

    private final BookRepository bookRepository;

    @Autowired
    public BookServiceImpl(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }


    @Override
    public void save(Book book) {

    }

    @Override
    public void edit(String id, Book newBook) {

    }

    @Override
    public void remove(String id) {

    }
}
