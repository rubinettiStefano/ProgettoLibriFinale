package com.generation.progettolibrifinale.model.repositories;

import com.generation.progettolibrifinale.model.entities.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book,Long>
{
}
