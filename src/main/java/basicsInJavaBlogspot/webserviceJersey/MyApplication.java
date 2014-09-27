package basicsInJavaBlogspot.webserviceJersey;

import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.spring.scope.RequestContextFilter;


public class MyApplication  extends ResourceConfig {
	
    public MyApplication () {
        register(RequestContextFilter.class);
//        register(JerseyResource.class);
//        register(SpringSingletonResource.class);
//        register(SpringRequestResource.class);
//        register(CustomExceptionMapper.class);
        register(TestService.class);
    }

}
