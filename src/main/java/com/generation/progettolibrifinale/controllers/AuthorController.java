package com.generation.progettolibrifinale.controllers;

import com.generation.progettolibrifinale.model.entities.Author;
import com.generation.progettolibrifinale.model.entities.Book;
import com.generation.progettolibrifinale.model.repositories.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("author")
public class AuthorController
{
    @Autowired
    AuthorRepository repo;

    @GetMapping("all")
    public String authorSummary
            (
                    Model m,
                    @RequestParam(required = false) String parteDelNominativo,
                    @RequestParam(required = false) String r
            )
    {
        List<Author> authors;
        if(r!=null || parteDelNominativo==null)
            authors=repo.findAll();
        else
        {
            authors = repo.filtraPerNominativo(parteDelNominativo);
            m.addAttribute("currentResearch",parteDelNominativo);
        }
        m.addAttribute("authors",authors);

        return "summaryauthors";
    }

    @GetMapping("detail")
    public String authorDetail(@RequestParam Long id,Model m)
    {
        Optional<Author> op = repo.findById(id);

        if(op.isPresent())
        {
            m.addAttribute("a",op.get());
            return "authordetail";
        }
        else
            return "404NOTFOUND";
    }
}
