import com.kuang.pojo.Books;
import com.kuang.service.BookService;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {

    @Test
    public void myTest()
    {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationcontext.xml");
        BookService bookService = (BookService) context.getBean("BookServiceImpl");
        List<Books> books = bookService.queryAllBook();
        for (Books book : books) {
            System.out.println(book);
        }

    }
}
