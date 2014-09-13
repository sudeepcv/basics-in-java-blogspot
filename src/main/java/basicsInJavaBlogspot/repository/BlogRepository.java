package basicsInJavaBlogspot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import basicsInJavaBlogspot.model.BlogPost;
@Repository("blogRepository")
public interface BlogRepository extends JpaRepository<BlogPost,Long> {

	

	List<BlogPost> findByTitleEquals(String postTitle);

}
