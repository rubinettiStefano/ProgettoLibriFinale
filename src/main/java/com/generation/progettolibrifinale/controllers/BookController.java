package com.generation.progettolibrifinale.controllers;

import com.generation.progettolibrifinale.model.entities.Book;
import com.generation.progettolibrifinale.model.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("book")//aggiunge questo come prefisso degli uri
public class BookController
{
    @Autowired
    BookRepository repo;

    //localhost:8080/book/all
    @GetMapping("all")
    public String allBooks(Model m)
    {
        List<Book> books = repo.findAll();
        m.addAttribute("books",books);
        return "summarybooks";
    }

}
