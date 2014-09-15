package basicsInJavaBlogspot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import basicsInJavaBlogspot.model.Comment;

@Repository("commentRepository")
public interface CommentRepository extends JpaRepository<Comment, Long> {

}
