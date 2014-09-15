package basicsInJavaBlogspot.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Comment {
	
	private Long id;
	private String name;
	private String content;
	@ManyToOne
	@JoinColumn(name="blogId")
	private BlogPost blogPost;
	public BlogPost getBlogPost() {
		return blogPost;
	}
	public void setBlogPost(BlogPost blogPost) {
		this.blogPost = blogPost;
	}
	private boolean status;
	public String getContent() {
		return content;
	}
	public Long getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public boolean isStatus() {
		return status;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}

}
