package basicsInJavaBlogspot.controller;

import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import basicsInJavaBlogspot.model.BlogPost;
import basicsInJavaBlogspot.model.BlogReport;
import basicsInJavaBlogspot.model.Comment;
import basicsInJavaBlogspot.repository.BlogRepository;
import basicsInJavaBlogspot.repository.CommentRepository;
@Controller
public class AdminController {
	@Autowired
	private BlogRepository blogRepository;
	@Autowired
	private CommentRepository commentRepository;
	@RequestMapping("/index")
	public String allPost(Model model){
		
		List<BlogPost> allPost=blogRepository.findAll();
		Collections.reverse(allPost);
		model.addAttribute("allPosts", allPost);
		
		return "index";
	}
	@RequestMapping(value="/{postTitle}")
	@Transactional
	public String blogPost(@PathVariable("postTitle") String postTitle,Model model){
		BlogPost singlePost=blogRepository.findByTitleEquals(postTitle);
		Long BlogId=singlePost.getId();
		List<BlogReport> blogReport=blogRepository.getBlogReport(BlogId);
		model.addAttribute("postReport",blogReport);
		model.addAttribute("singlePost",singlePost);
		return "blogpost";
	}
	@RequestMapping(value="/addcomment",method=RequestMethod.POST)
	@Transactional
	public @ResponseBody String addComments(@Valid Comment comments,BindingResult  bindingResult ,@RequestParam("postId") Long postId){
		BlogPost blogPost=blogRepository.findOne(postId);
		//comments.getBlogPost().setId(postId);
		comments.setBlogPost(blogPost);
		commentRepository.save(comments);
		
		
			
		return "{\"successId\":\""+postId+"\"}";
	}
	
	@RequestMapping("/adminhome")
	public String adminHome(Model model){
		List<BlogPost> allPost=blogRepository.findAll();
		model.addAttribute("allPosts", allPost);
		
		return "adminhome";
	}
	@RequestMapping("/allcomments")
	public String allComments(Model model){
		List<Comment> allcomments=commentRepository.findAll();
		
		model.addAttribute("allComments",allcomments);
		return "allcomments";
	}
	@RequestMapping(value="/commentsAprove",method=RequestMethod.POST)
	public @ResponseBody String aproveComments(@RequestParam("commentId") Long commentId){
		commentRepository.setStatus(commentId);
		return "{\"success\":success}";
	}
	
    @RequestMapping("/addpost")
    public String addpost() {


        return "addpost";
    }
    @RequestMapping(value="/addpostAction",method=RequestMethod.POST)
    public String addpostAction(@RequestParam("title") String title,@RequestParam("content") String content){
    	BlogPost blogpost=new BlogPost();
    	
    	 //Date dNow = new Date( );
       //  SimpleDateFormat ft = new SimpleDateFormat ("dd/MMMMM/yyyy");
    	 //ft.format(dNow)
    	blogpost.setContent(content);
    	blogpost.setTitle(title);
    	blogpost.setDate(new Date());
    
    	blogRepository.save(blogpost);
    	return "addpost";
    }
    @RequestMapping(value="/deletePost",method=RequestMethod.POST)
    public @ResponseBody String deletPost(@RequestParam("postId") Long postId){
    	BlogPost deletedPost=blogRepository.findOne(postId);
    	blogRepository.delete(postId);
    	return "{\"successId\":\""+postId+"\"}";
    }

}
