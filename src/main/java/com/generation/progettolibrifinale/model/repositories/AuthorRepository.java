package com.generation.progettolibrifinale.model.repositories;

import com.generation.progettolibrifinale.model.entities.Author;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthorRepository extends JpaRepository<Author,Long> {
}
