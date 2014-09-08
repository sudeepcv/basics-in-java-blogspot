package basicsInJavaBlogspot.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class BlogPost {
	@Id	
	@GeneratedValue
	private Long Id;
	private String Title;
	@Column(columnDefinition="TEXT")
	private String Content;
	@Temporal(TemporalType.DATE)
	private Date Date;
	public String getContent() {
		return Content;
	}
	public Date getDate() {
		return Date;
	}
	public Long getId() {
		return Id;
	}
	public String getTitle() {
		return Title;
	}
	public void setContent(String content) {
		Content = content;
	}
	public void setDate(Date date) {
		Date = date;
	}
	public void setId(Long id) {
		Id = id;
	}
	public void setTitle(String title) {
		Title = title;
	}
	

}
