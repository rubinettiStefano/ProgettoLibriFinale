package com.generation.progettolibrifinale.model.repositories;

import com.generation.progettolibrifinale.model.entities.Book;
import com.generation.progettolibrifinale.model.entities.Preface;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PrefaceRepository extends JpaRepository<Preface,Long>
{
}
