package com.kuang.dao;

import com.kuang.pojo.Books;

import java.util.List;

public interface BooksMapper {

    public List<Books> queryAllBook();
    public Books queryBookById(int id);
    public int updateBook(Books books);
    public int insertBook(Books books);
    public int deleteBookById(int id);
    public List<Books> queryBookByName(String bookName);
}
