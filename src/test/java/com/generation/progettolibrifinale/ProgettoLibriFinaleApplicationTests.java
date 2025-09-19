package com.generation.progettolibrifinale;

import com.generation.progettolibrifinale.model.entities.Author;
import com.generation.progettolibrifinale.model.entities.Book;
import com.generation.progettolibrifinale.model.entities.Preface;
import com.generation.progettolibrifinale.model.enums.Locale;
import com.generation.progettolibrifinale.model.repositories.AuthorRepository;
import com.generation.progettolibrifinale.model.repositories.BookRepository;
import com.generation.progettolibrifinale.model.repositories.PrefaceRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@SpringBootTest
class ProgettoLibriFinaleApplicationTests {

    @Autowired
    BookRepository repo;

    @Autowired
    AuthorRepository aRepo;

    @Autowired
    PrefaceRepository pRepo;

    @Test
    void contextLoads()
    {
        List<Author> autori = createSampleAuthorsWithBooks();
        aRepo.saveAll(autori);
    }

    public List<Author> createSampleAuthorsWithBooks() {
        Author a1 = new Author();
        a1.setName("Mario");
        a1.setSurname("Rossi");
        a1.setDob(LocalDate.of(1960, 5, 14));
        a1.setAlive(true);

        Book b1a = new Book();
        b1a.setTitle("Il mistero della luna");
        b1a.setPrice(16.90);
        b1a.setReleasedIn(2001);
        b1a.setCopiesSold(25000);
        b1a.getLanguages().add(Locale.IT);
        a1.addBook(b1a);

        Book b1b = new Book();
        b1b.setTitle("Viaggio senza ritorno");
        b1b.setPrice(18.50);
        b1b.setReleasedIn(2005);
        b1b.setCopiesSold(34000);
        b1b.getLanguages().add(Locale.IT);
        a1.addBook(b1b);

        Book b1c = new Book();
        b1c.setTitle("Ombre sull'acqua");
        b1c.setPrice(17.00);
        b1c.setReleasedIn(2010);
        b1c.setCopiesSold(21000);
        b1c.getLanguages().add(Locale.IT);
        a1.addBook(b1c);

        Author a2 = new Author();
        a2.setName("John");
        a2.setSurname("Smith");
        a2.setDob(LocalDate.of(1975, 9, 3));
        a2.setAlive(true);

        Book b2a = new Book();
        b2a.setTitle("Silent Desert");
        b2a.setPrice(14.50);
        b2a.setReleasedIn(1998);
        b2a.setCopiesSold(12000);
        b2a.getLanguages().add(Locale.EN);
        a2.addBook(b2a);

        Book b2b = new Book();
        b2b.setTitle("Shades of Tomorrow");
        b2b.setPrice(22.90);
        b2b.setReleasedIn(2015);
        b2b.setCopiesSold(18500);
        b2b.getLanguages().add(Locale.EN);
        a2.addBook(b2b);

        Book b2c = new Book();
        b2c.setTitle("The Last Autumn");
        b2c.setPrice(19.90);
        b2c.setReleasedIn(2021);
        b2c.setCopiesSold(9000);
        b2c.getLanguages().add(Locale.EN);
        a2.addBook(b2c);

        Author a3 = new Author();
        a3.setName("Franca");
        a3.setSurname("Bianchi");
        a3.setDob(LocalDate.of(1955, 2, 27));
        a3.setAlive(false);

        Book b3a = new Book();
        b3a.setTitle("Nel cuore di Milano");
        b3a.setPrice(11.99);
        b3a.setReleasedIn(1982);
        b3a.setCopiesSold(37000);
        b3a.getLanguages().add(Locale.IT);
        a3.addBook(b3a);

        Book b3b = new Book();
        b3b.setTitle("Sole spento");
        b3b.setPrice(15.20);
        b3b.setReleasedIn(1997);
        b3b.setCopiesSold(28000);
        b3b.getLanguages().add(Locale.IT);
        a3.addBook(b3b);

        Book b3c = new Book();
        b3c.setTitle("La promessa");
        b3c.setPrice(20.10);
        b3c.setReleasedIn(2003);
        b3c.setCopiesSold(18000);
        b3c.getLanguages().add(Locale.IT);
        a3.addBook(b3c);

        Author a4 = new Author();
        a4.setName("Sven");
        a4.setSurname("Holm");
        a4.setDob(LocalDate.of(1981, 12, 14));
        a4.setAlive(true);

        Book b4a = new Book();
        b4a.setTitle("Nordic Lights");
        b4a.setPrice(21.50);
        b4a.setReleasedIn(2017);
        b4a.setCopiesSold(7000);
        b4a.getLanguages().add(Locale.EN);
        a4.addBook(b4a);

        Book b4b = new Book();
        b4b.setTitle("Frozen Paths");
        b4b.setPrice(23.80);
        b4b.setReleasedIn(2020);
        b4b.setCopiesSold(15000);
        b4b.getLanguages().add(Locale.EN);
        a4.addBook(b4b);

        Book b4c = new Book();
        b4c.setTitle("Winter Spirits");
        b4c.setPrice(18.00);
        b4c.setReleasedIn(2023);
        b4c.setCopiesSold(8000);
        b4c.getLanguages().add(Locale.EN);
        a4.addBook(b4c);

        Author a5 = new Author();
        a5.setName("Sara");
        a5.setSurname("Neri");
        a5.setDob(LocalDate.of(1992, 7, 22));
        a5.setAlive(true);

        Book b5a = new Book();
        b5a.setTitle("Lo sguardo oltre");
        b5a.setPrice(12.90);
        b5a.setReleasedIn(2019);
        b5a.setCopiesSold(10200);
        b5a.getLanguages().add(Locale.IT);
        a5.addBook(b5a);

        Book b5b = new Book();
        b5b.setTitle("Giorni di sole");
        b5b.setPrice(14.20);
        b5b.setReleasedIn(2022);
        b5b.setCopiesSold(4200);
        b5b.getLanguages().add(Locale.IT);
        a5.addBook(b5b);

        Book b5c = new Book();
        b5c.setTitle("Vento di cambiamento");
        b5c.setPrice(15.90);
        b5c.setReleasedIn(2024);
        b5c.setCopiesSold(2500);
        b5c.getLanguages().add(Locale.IT);
        a5.addBook(b5c);

        return List.of(a1, a2, a3, a4, a5);
    }

}
