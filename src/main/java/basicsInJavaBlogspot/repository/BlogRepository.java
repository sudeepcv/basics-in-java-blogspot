package basicsInJavaBlogspot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import basicsInJavaBlogspot.model.BlogPost;
import basicsInJavaBlogspot.model.BlogReport;
@Repository("blogRepository")
public interface BlogRepository extends JpaRepository<BlogPost,Long> {

	BlogPost findByTitleEquals(String postTitle);
    @Query("Select new basicsInJavaBlogspot.model.BlogReport(b.title,b.content,b.date,c.name,c.content) from BlogPost b,Comment c where b.id=c.blogPost.id AND b.id=:blogId c.status=true")
	List<BlogReport> getBlogReport(@Param("blogId") Long blogId);


}
