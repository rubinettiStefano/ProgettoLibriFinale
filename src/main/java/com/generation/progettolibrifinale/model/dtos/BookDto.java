package com.generation.progettolibrifinale.model.dtos;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookDto
{
    private String title;
    private double price;
    private int copiesSold;
    private int releasedIn;
    private long author_id;

}
