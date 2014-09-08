package basicsInJavaBlogspot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import basicsInJavaBlogspot.model.BlogPost;
@Repository("BlogRepository")
public interface BlogRepository extends JpaRepository<BlogPost,Long> {

}
