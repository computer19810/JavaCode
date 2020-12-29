package com.kuang.service;

import com.kuang.dao.BooksMapper;
import com.kuang.pojo.Books;

import java.util.List;

public class BookServierImpl implements BookService {

    private BooksMapper booksMapper;

    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    public List<Books> queryAllBook() {
        return booksMapper.queryAllBook();
    }

    public Books queryBookById(int id) {
        return booksMapper.queryBookById(id);
    }

    public int updateBook(Books books) {
        return booksMapper.updateBook(books);
    }

    public int insertBook(Books books) {
        return booksMapper.insertBook(books);
    }

    public int deleteBookById(int id) {
        return booksMapper.deleteBookById(id);
    }

    public List<Books> queryBookByName(String bookName)
    {
        return booksMapper.queryBookByName(bookName);
    }
}
