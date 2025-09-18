package com.generation.progettolibrifinale;

import com.generation.progettolibrifinale.model.entities.Book;
import com.generation.progettolibrifinale.model.entities.Preface;
import com.generation.progettolibrifinale.model.enums.Locale;
import com.generation.progettolibrifinale.model.repositories.BookRepository;
import com.generation.progettolibrifinale.model.repositories.PrefaceRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@SpringBootTest
class ProgettoLibriFinaleApplicationTests {

    @Autowired
    BookRepository repo;

    @Autowired
    PrefaceRepository pRepo;

    @Test
    void contextLoads()
    {
//        Book book1 = new Book();
//        book1.setTitle("Spring Boot Essentials");
//        book1.setPrice(39.90);
//        book1.setCopiesSold(1200);
//        book1.setReleasedIn(2022);
//        book1.getLanguages().addAll(Set.of(Locale.EN, Locale.IT));
//        book1.getReviews().addAll(Set.of(
//                "Great guide for beginners",
//                "Very clear and concise"
//        ));
//
//        Book book2 = new Book();
//        book2.setTitle("Effective Java Programming");
//        book2.setPrice(54.50);
//        book2.setCopiesSold(8500);
//        book2.setReleasedIn(2019);
//        book2.getLanguages().addAll(Set.of(Locale.EN, Locale.DE));
//        book2.getReviews().addAll(Set.of(
//                "A must-have for Java developers",
//                "Packed with best practices"
//        ));
//
//        Book book3 = new Book();
//        book3.setTitle("Database Design Patterns");
//        book3.setPrice(45.00);
//        book3.setCopiesSold(3200);
//        book3.setReleasedIn(2021);
//        book3.getLanguages().addAll(Set.of(Locale.EN, Locale.FR, Locale.IT));
//        book3.getReviews().addAll(Set.of(
//                "Excellent coverage of relational models",
//                "Very useful examples"
//        ));
//
//        List<Book> books = List.of(book1, book2, book3);
//
//        repo.saveAll(books);
//        repo.deleteById(52L);
//        repo.deleteById(53L);
//        repo.deleteById(54L);
        Preface preface1 = new Preface();
        preface1.setWriterName("Mario Rossi");
        preface1.setContent("Prefazione molto interessante e ricca di approfondimenti storici.");
        preface1.setBook(repo.findById(1L).get());

        Preface preface2 = new Preface();
        preface2.setWriterName("Anna Bianchi");
        preface2.setContent("Un’introduzione esaustiva che inquadra perfettamente il tema del libro.");
        preface2.setBook(repo.findById(2L).get());

        Preface preface3 = new Preface();
        preface3.setWriterName("Luca Verdi");
        preface3.setContent("Grande lavoro di sintesi con uno stile coinvolgente e chiaro.");
        preface3.setBook(repo.findById(3L).get());

        List<Preface> prefaces = new ArrayList<>();
        prefaces.add(preface1);
        prefaces.add(preface2);
        prefaces.add(preface3);

        pRepo.saveAll(prefaces);
    }

}
