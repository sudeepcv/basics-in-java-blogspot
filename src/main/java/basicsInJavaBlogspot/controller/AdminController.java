package basicsInJavaBlogspot.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import basicsInJavaBlogspot.model.BlogPost;
import basicsInJavaBlogspot.repository.BlogRepository;
@Controller
public class AdminController {
	@Autowired
	private BlogRepository blogRepository;
	
    @RequestMapping("/addpost")
    public String addpost() {


        return "addpost";
    }
    @RequestMapping(value="/addpostAction",method=RequestMethod.POST)
    public String addpostAction(@RequestParam("title") String title,@RequestParam("content") String content){
    	BlogPost blogpost=new BlogPost();
    	blogpost.setContent(content);
    	blogpost.setTitle(title);
    	blogpost.setDate(new Date());
    
    	blogRepository.save(blogpost);
    	return "addpost";
    }

}
