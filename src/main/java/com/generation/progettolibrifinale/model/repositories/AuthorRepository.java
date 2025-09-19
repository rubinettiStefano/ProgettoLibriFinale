package com.generation.progettolibrifinale.model.repositories;

import com.generation.progettolibrifinale.model.entities.Author;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AuthorRepository extends JpaRepository<Author,Long>
{
    @Query("SELECT a FROM Author a WHERE a.name like %:key% OR a.surname like %:key%")
//    @Query("SELECT a FROM Author a WHERE CONCAT(a.name,' ',a.surname) like %:key%")
    List<Author> filtraPerNominativo(String key);
}
