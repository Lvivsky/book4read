package com.example.book4read.controller.trash;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Log4j2

public class ShelfController {

    @GetMapping({"/", "/shelf"})
    public String index() {
        return "index";
    }

}
