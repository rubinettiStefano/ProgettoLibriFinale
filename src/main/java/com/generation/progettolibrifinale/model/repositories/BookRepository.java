package com.generation.progettolibrifinale.model.repositories;

import com.generation.progettolibrifinale.model.entities.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BookRepository extends JpaRepository<Book,Long>
{
    @Query("select b from Book b WHERE b.releasedIn >= :anno")
    List<Book> filtraPerAnno(int anno);
}
