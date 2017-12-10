package net.zjwu.mis.business.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import net.zjwu.mis.base.controller.BaseController;
import net.zjwu.mis.business.model.Book;
import net.zjwu.mis.business.service.BookService;

@RequestMapping("/book")
@Controller
public class BookController extends BaseController<Book> {
      @Autowired
      private BookService bookService;
      
      @RequestMapping("/render")
      public String render(Model model){
    	  List<Book> list = bookService.selectAll();
    	  model.addAttribute("list", list);
    	  return "system/book/book";
      }
      
      @RequestMapping("/bookDetail/{id}")
      public String bookDeatil(@PathVariable int id,Model model){
    	  Book book = bookService.selectByKey(id);
    	  model.addAttribute("Book", book);
    	  return "system/book/book_detail";
      }
      
}
