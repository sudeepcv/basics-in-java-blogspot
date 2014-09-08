package basicsInJavaBlogspot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class AdminController {
    @RequestMapping("/addpost")
    public String addPost() {


        return "addpost";
    }
    

}
