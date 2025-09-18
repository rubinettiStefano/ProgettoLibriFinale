package com.generation.progettolibrifinale.controllers;

import com.generation.progettolibrifinale.model.entities.Book;
import com.generation.progettolibrifinale.model.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("book")//aggiunge questo come prefisso degli uri
public class BookController
{
    @Autowired
    BookRepository repo;

    //localhost:8080/book/all
    @GetMapping("all")
    public String allBooks
    (
            Model m,
            @RequestParam(required = false) Integer ky,
            @RequestParam(required = false) String r
    )
    {
        List<Book> books;
        if(r!=null || ky==null)
            books=repo.findAll();
        else
        {
            books = repo.filtraPerAnno(ky);
            m.addAttribute("kycurrent",ky);
        }
        m.addAttribute("books",books);
        return "summarybooks";
    }

}
