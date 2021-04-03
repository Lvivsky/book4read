package com.example.book4read.service;

import com.example.book4read.model.Book;

public interface BookService {

    void save(Book book);
    void edit(String id, Book newBook);
    void remove(String id);

//    TODO:: Add functions

}
