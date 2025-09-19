package com.generation.progettolibrifinale.controllers;

import com.generation.progettolibrifinale.model.dtos.BookDto;
import com.generation.progettolibrifinale.model.entities.Author;
import com.generation.progettolibrifinale.model.entities.Book;
import com.generation.progettolibrifinale.model.repositories.AuthorRepository;
import com.generation.progettolibrifinale.model.repositories.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("book")//aggiunge questo come prefisso degli uri
public class BookController
{
    @Autowired
    BookRepository repo;

    @Autowired
    AuthorRepository aRepo;

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

    @GetMapping("detail")
    public String bookDetail
            (
                    Model m,
                    @RequestParam(required = false) Long id
            )
    {
        Optional<Book> op = repo.findById(id);

        if(op.isPresent())
        {
            m.addAttribute("b",op.get());
            return "bookdetail";
        }
        else
            return "404NOTFOUND";
    }

    @PostMapping("save")
    public String save(@ModelAttribute BookDto dto)
    {
        Book b = new Book();
        b.setTitle(dto.getTitle());
        b.setPrice(dto.getPrice());
        b.setCopiesSold(dto.getCopiesSold());
        b.setReleasedIn(dto.getReleasedIn());

        Author a = aRepo.findById(dto.getAuthor_id()).get();
        b.setAuthor(a);

        repo.save(b);
        return "redirect:/author/detail?id="+dto.getAuthor_id();
    }

}
