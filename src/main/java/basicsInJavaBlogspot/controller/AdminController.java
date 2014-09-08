package basicsInJavaBlogspot.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import basicsInJavaBlogspot.model.BlogPost;
@Controller
public class AdminController {
	
	
    @RequestMapping("/addpost")
    public String addpost() {


        return "addpost";
    }
    @RequestMapping(value="/addpostAction",method=RequestMethod.POST)
    public String addpostAction(@RequestParam("title") String title,@RequestParam("conten") String content){
    	BlogPost blogpost=new BlogPost();
    	blogpost.setContent(content);
    	blogpost.setTitle(title);
    	blogpost.setDate(new Date());
    	
    	return "addpost";
    }

}
