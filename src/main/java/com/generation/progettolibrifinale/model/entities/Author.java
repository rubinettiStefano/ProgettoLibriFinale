package com.generation.progettolibrifinale.model.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Past;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
public class Author extends BaseEntity
{
    @NotBlank @NotNull
    private String name;
    @NotBlank @NotNull
    private String surname;
    @Past
    private LocalDate dob;

    private boolean alive=true;

    @OneToMany(mappedBy = "author",fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    private Set<Book> books = new HashSet<>();

    public void addBook(Book b)
    {
        books.add(b);
        b.setAuthor(this);
    }

}
