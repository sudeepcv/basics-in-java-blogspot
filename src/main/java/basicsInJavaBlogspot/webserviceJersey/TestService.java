package basicsInJavaBlogspot.webserviceJersey;

import java.util.Date;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;

import basicsInJavaBlogspot.model.BlogPost;
import basicsInJavaBlogspot.repository.BlogRepository;

@Path("blogs")
@Component
public class TestService {
	@Autowired
	private BlogRepository blogRepository;
	
	@POST
	@Path("addpostJsonObj")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
	public BlogPost addpostJson(BlogPost blogPost) {
		
//		String title=blogPost.getTitle();
//		String blogContent=blogPost.getContent();
		System.out.println(blogPost.getContent());
		
		blogRepository.save(blogPost);
		
		return blogPost;
	}
	
	
	
	@POST
	@Path("addpost")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
	public BlogPost addPost(MultivaluedMap<String, String> formParams) {
		
		String title=formParams.getFirst("blogtitle");
		String blogContent=formParams.getFirst("blogcontent");
		BlogPost blogPost=new BlogPost();
		blogPost.setTitle(title);
		blogPost.setContent(blogContent);
		blogPost.setDate(new Date());

		blogRepository.save(blogPost);
		return blogPost;
	}
	
	
	
    @GET
    @Produces({MediaType.APPLICATION_XML,MediaType.APPLICATION_JSON})
    public List<BlogPost> blogposts() {
        return blogRepository.findAll();
    }
    
    @GET
    @Produces({MediaType.APPLICATION_XML,MediaType.APPLICATION_JSON})
    @Path("{id}")
    public BlogPost getBlogByid(@Param("id") Long id) {
        return blogRepository.findOne(id);
    }
    
    
    


}
