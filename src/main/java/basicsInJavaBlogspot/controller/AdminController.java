package basicsInJavaBlogspot.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
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
	ServletContext context;
	
	@Autowired
	private BlogRepository blogRepository;
	@Autowired
	private CommentRepository commentRepository;
	@RequestMapping("/index")
	public String allPost(Model model, HttpServletRequest request){
		System.out.println(request.getRemoteAddr());
		System.out.println(request.getRemoteHost());
		System.out.println(request.getRemotePort());
		System.out.println(request.getRemoteUser());
		System.out.println(request.getHeader("User-Agent"));
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
	@RequestMapping(value="/contact")
	public String contact(){
		return "contact";
	}
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model){
		return "login";
	}
	
	@RequestMapping(value="/loginFailed", method=RequestMethod.GET)
	public String loginFailed(ModelMap model) {
		System.out.println("Login Failed");
		
		model.addAttribute("error", "true");
		return "login";
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
	@RequestMapping("/getBlogTitles")
	public @ResponseBody List getBlogTitles(@RequestParam("q") String q){
		
		List blogTitles=new ArrayList();
		String strwithwild= "%"+q.toUpperCase()+"%";
		blogTitles=blogRepository.getAllBlogTitles(strwithwild);
				
		return blogTitles;
	}
	@RequestMapping(value="/searchBlog",method=RequestMethod.POST)
	public String searchBytitle(@RequestParam("blogTitle") String blogTitle,Model model){
		List<BlogPost> blogSearchResult=blogRepository.findByTitleContainingIgnoreCase(blogTitle);
		model.addAttribute("searchResult", blogSearchResult);
		return "searchResult";
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
	@Transactional
	@RequestMapping(value="/commentsAprove",method=RequestMethod.POST)
	public @ResponseBody String aproveComments(@RequestParam("commentId") Long commentId){
		commentRepository.setStatus(commentId);
		String html="<b>abc</abc>";
		return html;
		//return "{\"success\":\"success\"}";
	}
	
	
	
    @RequestMapping("/addpost")
    public String addpost(@RequestParam(value="success",defaultValue="") String success,Model model) {
    	if(success.length()>0)
    		model.addAttribute("success", success);

        return "addpost";
    }
    
   
    @RequestMapping("/editBlog")
    public String editPosts(Model model,@RequestParam("postId") Long postId,@RequestParam(value="success",defaultValue="") String success){
    	if(success.length()>0)
    		model.addAttribute("success", success);
    	
    	BlogPost blogPost=blogRepository.findOne(postId);
    	model.addAttribute("blogpost",blogPost);
    	
    	return "editpost";
    }
    @RequestMapping(value="/addpostAction",method=RequestMethod.POST)
    @Transactional
    public String addpostAction(@RequestParam("title") String title,@RequestParam("content") String content,@RequestParam(value="postId",defaultValue="") String postId){
    	
    		
    	
    	BlogPost blogpost=new BlogPost();
    	if(postId.length()!=0){
    		Long postid=Long.parseLong(postId);
    		blogpost.setId(postid);}	
    	
    	 //Date dNow = new Date( );
       //  SimpleDateFormat ft = new SimpleDateFormat ("dd/MMMMM/yyyy");
    	 //ft.format(dNow)
    	blogpost.setContent(content);
    	blogpost.setTitle(title);
    	blogpost.setDate(new Date());
    
    	blogRepository.save(blogpost);
    	if(postId.length()!=0)
    		return "redirect:editBlog.html?success=true&&postId="+postId;
    	else
    	   return "redirect:addpost.html?success=true";
    }
    @RequestMapping(value="/deletePost",method=RequestMethod.POST)
    public @ResponseBody String deletPost(@RequestParam("postId") Long postId){
    	BlogPost deletedPost=blogRepository.findOne(postId);
    	blogRepository.delete(postId);
    	return "{\"successId\":\""+postId+"\"}";
    }

}
