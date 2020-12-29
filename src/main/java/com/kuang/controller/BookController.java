package com.kuang.controller;

import com.kuang.pojo.Books;
import com.kuang.service.BookService;
import com.kuang.service.BookServierImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    //Controller调用Service

    @Autowired
    @Qualifier("BookServiceImpl")
    public BookService bookServier;

    @RequestMapping("/allBooks")
    public String allBooks(Model model)
    {
        List<Books> booksList = bookServier.queryAllBook();
        model.addAttribute("list", booksList);
        return "bookList";
    }
    @RequestMapping("/addNewBook")
    public String insertBook()
    {
        return "addNewBook";
    }
    @RequestMapping("/addBook")
    public String AddBook(Books books)
    {
        System.out.println(books);
        bookServier.insertBook(books);
        return "redirect:/book/allBooks";
    }
    @RequestMapping("/UpdateBook")
    public String UpdateBook(Model model, Books books)
    {
        System.out.println(books);
        int i = bookServier.updateBook(books);
        return "redirect:/book/allBooks";
    }
    @RequestMapping("/UpdateBookDone")
    public String UpdateBookDone(int id, Model model)
    {
        System.out.println(id);
        Books books = bookServier.queryBookById(id);
        model.addAttribute("Qbooks", books);
        return "UpdateBook";
    }

    @RequestMapping("/DeleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id)
    {
        int i = bookServier.deleteBookById(id);
        return "redirect:/book/allBooks";
    }
    @RequestMapping("/searchBook")
    public String searchBook(String bookName, Model model)
    {
        List<Books> bookByName = bookServier.queryBookByName(bookName);
        if(bookByName==null)
        {
            model.addAttribute("error","Nothing");
        }
        model.addAttribute("list",bookByName);
        return "bookList";
    }
}
