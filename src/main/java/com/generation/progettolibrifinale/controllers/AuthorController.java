package com.generation.progettolibrifinale.controllers;

import com.generation.progettolibrifinale.model.repositories.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("author")
public class AuthorController
{
    @Autowired
    AuthorRepository repo;

    @GetMapping("all")
    public String authorSummary()
    {
        //TODO
        return null;
    }
}
