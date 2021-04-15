package com.randy.languages.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.randy.languages.models.Language;
import com.randy.languages.repositories.LanguageRepository;

@Service
public class LanguageService {
    // adding the book repository as a dependency
    private final LanguageRepository langRepository;
    
    public LanguageService(LanguageRepository langRepository) {
    	this.langRepository = langRepository;
    }
    
    public List<Language> allLangs(){
    	return this.langRepository.findAll();
    }
    
    //create a language
    public Language createLang(Language l) {
    	return this.langRepository.save(l);
    }

    public Language getLang(Long id) {
    	return this.langRepository.findById(id).orElse(null);

    }
    
    public Language updateLang(Language lang) {
    	return this.langRepository.save(lang);
    }
    
    public void deleteLang(Long id) {
    	this.langRepository.deleteById(id);
    }
    public Language getOneLang(Long id) {
    	Optional<Language> optionalLang = this.langRepository.findById(id);
    	if(optionalLang.isPresent()) {
            return optionalLang.get();
        } else {
            return null;
        }
    }
}







//    public BookService(BookRepository bookRepository) {
//        this.bookRepository = bookRepository;
//    }
//    // returns all the books
//    public List<Book> allBooks() {
//        return bookRepository.findAll();
//    }
//    // creates a book
//    public Book createBook(Book b) {
//        return bookRepository.save(b);
//    }
//    // retrieves a book
//    public Book findBook(Long id) {
//        Optional<Book> optionalBook = bookRepository.findById(id);
//        if(optionalBook.isPresent()) {
//            return optionalBook.get();
//        } else {
//            return null;
//        }
//    }
//}