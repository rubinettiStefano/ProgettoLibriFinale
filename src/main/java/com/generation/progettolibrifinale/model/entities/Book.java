package com.generation.progettolibrifinale.model.entities;

import com.generation.progettolibrifinale.model.enums.Locale;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
public class Book extends BaseEntity
{
    @NotNull @NotBlank
    private String title;
    @PositiveOrZero
    private double price;
    @PositiveOrZero
    private int copiesSold;
    private int releasedIn;

    @ElementCollection(fetch = FetchType.EAGER)
    @Enumerated(EnumType.STRING)
    private Set<Locale> languages = new HashSet<>();
    @ElementCollection(fetch = FetchType.EAGER)
    private Set<String> reviews = new HashSet<>();

    @OneToOne(mappedBy = "book",fetch = FetchType.EAGER)
    private Preface preface;

    @ManyToOne(fetch = FetchType.EAGER)
    private Author author;
}
