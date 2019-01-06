package net.zjwu.mis.business.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import net.zjwu.mis.base.controller.BaseController;
import net.zjwu.mis.business.constans.Constans;
import net.zjwu.mis.business.model.Book;
import net.zjwu.mis.business.model.Sentence;
import net.zjwu.mis.business.service.BookService;
import net.zjwu.mis.business.service.SentenceService;
import net.zjwu.mis.business.vo.ResultVo;
import net.zjwu.mis.system.service.UserService;
import net.zjwu.mis.utils.PropertyUtil;

@RequestMapping("/book")
@Controller
public class BookController extends BaseController<Book> {
      @Autowired
      private BookService bookService;
      @Autowired
      private SentenceService sentenceService;
      
      @Autowired
      private UserService userService;
      
      @RequestMapping("/render")
      public String render(Model model){
    	  List<Book> list = bookService.selectAll();
    	  model.addAttribute("list", list);
    	  return "system/book/book";
      }
      
      @RequestMapping("/bookDetail/{id}")
      public String bookDeatil(@PathVariable int id,Model model){
    	  boolean isAdd ;
    	  if(id==0){
    		  isAdd=true; 
    	  }else{
    		  Book book = bookService.selectByKey(id);
        	  model.addAttribute("Book", book);
        	  isAdd =false;
    	  }
    	  model.addAttribute("isAdd", isAdd);
    	  return "system/book/book_detail";
      }
      
      /**
       * 添加或修改图书
     * @throws IOException 
     * @throws IllegalStateException 
       */
      @RequestMapping("/bookAddOrUpdate")
      public String bookAddOrUpdate(Book book,@RequestParam MultipartFile book_pic,HttpServletRequest request,Model model) throws IllegalStateException, IOException{
    	  String originalFilename = book_pic.getOriginalFilename();
  		  if(book_pic!=null && originalFilename!=null && originalFilename.length()>0){
  			//得到保存路径
  			String savepath = PropertyUtil.getProperty("book.uplod.url");
  			//得到新的图片名称
  			String filename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
  			String picUrl = "book"+File.separator+filename;
  			File newfile = new File(savepath+picUrl);
  			//将图片存到硬盘里
  			book_pic.transferTo(newfile);
  			//将图片名称存到数据库
  			book.setPicUrl(picUrl);
  		  }
    	  book.setCreateTime(new Date());
    	  if(book.getId()==null||"".equals(book.getId())){
    		  bookService.save(book);
    	  }else{
    			if("".equals(book.getPicUrl())||book.getPicUrl()==null){  
	    			Book book2 = bookService.selectByKey(book.getId());  
	    			book.setPicUrl(book2.getPicUrl());
    			}
    		    bookService.update(book);
    	  }
    	  List<Book> list = bookService.selectAll();
    	  model.addAttribute("list", list);
    	  return "system/book/book";
      }
      
      //得到页面
      @RequestMapping("getSentencePage")
      public String getSentencePage(){
    	  return "system/book/sentence";
      }
      
      @RequestMapping("/getSentenceData")
      @ResponseBody
      public List<Sentence> getSentenceData(int rows,int page){
    	  return sentenceService.getPage(rows,page).getList();
      }
      
      //添加句子页面
      @RequestMapping("/addSentence")
      @ResponseBody
      public ResultVo addSentence(String content){
    	  Sentence sentence = new Sentence();
    	  ResultVo rs = new ResultVo();
    	  rs.setCode(Constans.RESULT_SUCCESS);
    	  rs.setMessage("success");
    	  sentence.setCreatTime(new Date());
    	  sentence.setContent(content);
    	  String uid = (String)SecurityUtils.getSubject().getPrincipal();
    	  String name = userService.getUserByUid(uid).getName();
    	  sentence.setUid(name);
    	  try{
    	  sentenceService.save(sentence);
    	  }catch(Exception e){
    		  rs.setCode(Constans.RESULT_FAIL);
    		  rs.setMessage("save fail");
    	  }
    	  return rs;
      }
      
      //deleteBook
      @RequestMapping("/deleteBook")
      @ResponseBody
      public ResultVo deleteBook(int id){
    	  ResultVo rs = new ResultVo();
    	  rs.setCode(Constans.RESULT_SUCCESS);
    	  try{
    		  bookService.delete(id);
    	  }catch(Exception e){
    		  rs.setCode(Constans.RESULT_FAIL);
    	  }
    	  return rs;
      }
      
      //desk
     /* @RequestMapping("/deskBook")
      public String deskBook(Model model){
    	  User user = SpringUtil.getCurrentUser();
    	  model.addAttribute("user", user);
    	  return "desk/book/book";
      }*/
      
}
