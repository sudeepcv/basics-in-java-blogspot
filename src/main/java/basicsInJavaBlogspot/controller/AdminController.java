package basicsInJavaBlogspot.controller;

import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import basicsInJavaBlogspot.model.BlogPost;
import basicsInJavaBlogspot.repository.BlogRepository;
@Controller
public class AdminController {
	@Autowired
	private BlogRepository blogRepository;
	@RequestMapping("/index")
	public String allPost(Model model){
		
		List<BlogPost> allPost=blogRepository.findAll();
		Collections.reverse(allPost);
		model.addAttribute("allPosts", allPost);
		
		return "index";
	}
	@RequestMapping("/adminhome")
	public String adminHome(Model model){
		List<BlogPost> allPost=blogRepository.findAll();
		model.addAttribute("allPosts", allPost);
		
		return "adminhome";
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
    	return "{successid:" +postId+"}";
    }

}
