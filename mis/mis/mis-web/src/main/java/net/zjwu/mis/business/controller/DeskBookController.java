package net.zjwu.mis.business.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.zjwu.mis.business.dto.BookCommentDto;
import net.zjwu.mis.business.model.Book;
import net.zjwu.mis.business.model.BookComment;
import net.zjwu.mis.business.service.BookCommentService;
import net.zjwu.mis.business.service.BookService;
import net.zjwu.mis.business.vo.ResultVo;
import net.zjwu.mis.system.model.User;
import net.zjwu.mis.utils.SpringUtil;

@Controller
@RequestMapping("/deskBook")
public class DeskBookController {
    @Autowired
    private BookService bookService;
    
    @Autowired
    private BookCommentService bookCommentService;
	@RequestMapping("/render")
	public String render(Model model){
	  User user = SpringUtil.getCurrentUser();
	  List<Book> books = bookService.getHotBooks();
	  List<Book> mybooks = bookService.getMybooks(user.getId());
	  List<BookComment> bookComments = bookCommentService.getHotBookComments();
	  List<BookCommentDto> hotComments = getHotBooks(bookComments);
	  model.addAttribute("hotComments", hotComments);
	  model.addAttribute("mybooks", mybooks);
	  model.addAttribute("books", books);
  	  model.addAttribute("user", user);
  	  return "desk/book/book";
	}
	public List<BookCommentDto> getHotBooks(List<BookComment> bookComments){
		List<BookCommentDto> books = new ArrayList<BookCommentDto>();
		for (BookComment bc : bookComments) {
			Book book  = bookService.selectByKey(bc.getTopicId());
			BookCommentDto bcd = new BookCommentDto();
			bcd.setAuthor(book.getAuthor());
			bcd.setBookName(book.getBookName());
			bcd.setCommentDate(bc.getCommentDate());
			bcd.setContent(bc.getContent());
			bcd.setFromUid(bc.getFromUid());
			bcd.setId(bc.getId());
			bcd.setName(bc.getName());
			bcd.setPicUrl(book.getPicUrl());
			bcd.setPraise(bc.getPraise());
			bcd.setTopicType(bc.getTopicType());
			books.add(bcd);
		}
		return books;
		
	}
	
	//搜索
	@RequestMapping("/searchBook")
	public String searchBook(String key,Model model){
		List<Book> books = bookService.searchBook(key);
		model.addAttribute("books", books);
		return "desk/book/bookSearch";
	}
	
	@RequestMapping("/bookType")
	public String bookType(int key,Model model){
		List<Book> books = bookService.searchBookBytype(key);
		model.addAttribute("books", books);
		return "desk/book/bookSearch";
	}
	
	
	//bookDtail
	@RequestMapping("/bookDtail")
	public String bookDtail(int id,Model model){
		Book book = bookService.selectByKey(id);
		int userId = SpringUtil.getCurrentUser().getId();
		List<BookComment> comments = bookCommentService.getCommentsByBookId(id);
		model.addAttribute("book", book);
		model.addAttribute("comments", comments);
		List<Integer> mybook = bookService.getMybookId(userId,id);
		if(!mybook.isEmpty()){
		 model.addAttribute("mybook", true);
		}else{
			model.addAttribute("mybook", false);
		}
		return "desk/book/bookDetail";
	}
	
	@RequestMapping("/addBookComment")
	@ResponseBody
	public ResultVo addBookComment(int bookId,String comment){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String dateTime = format.format(date);
		ResultVo result= new ResultVo();
		result.setCode(1);
		result.setMessage("success");
		User user = SpringUtil.getCurrentUser();
		try {
			BookComment bc = new BookComment();
			bc.setTopicId(bookId);
			bc.setContent(comment);
			bc.setFromUid(user.getUid());
			bc.setName(user.getName());
			bc.setRemark(user.getPicUrl());
			bc.setPraise(0);
			bc.setCommentDate(dateTime);
			bookCommentService.save(bc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//赞一下
	@RequestMapping("/zanyixa")
	@ResponseBody
	public ResultVo zanyixa(int number,int commentId){
		ResultVo result= new ResultVo();
		result.setCode(1);
		result.setMessage("success");
		try {
		BookComment bc = bookCommentService.selectByKey(commentId);
		bc.setPraise(number);
		int info = bookCommentService.update(bc);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//添加到我的书架
	@RequestMapping("/addMybook")
	public String addMybook(int bookId,Model model){
		User user = SpringUtil.getCurrentUser();
		ResultVo result= new ResultVo();
		result.setCode(1);
		result.setMessage("success");
		try {
			bookService.addUserBook(user.getId(),bookId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Book book = bookService.selectByKey(bookId);
		List<BookComment> comments = bookCommentService.getCommentsByBookId(bookId);
		model.addAttribute("book", book);
		model.addAttribute("comments", comments);
		model.addAttribute("mybook", false);
		return "desk/book/bookDetail";
	}
}
