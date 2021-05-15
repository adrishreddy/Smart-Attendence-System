package com.example.major.DemoForMajor;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

import com.example.major.DemoForMajor.security.ApplicationSecuirtyConfiguration;

@SpringBootApplication
public class DemoForMajorApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoForMajorApplication.class, args);
	}

//	@Override
//	public void onStartup(ServletContext sc) throws ServletException {
//		AnnotationConfigWebApplicationContext root = new AnnotationConfigWebApplicationContext();
//        root.register(ApplicationSecuirtyConfiguration.class);
//
//        sc.addListener(new ContextLoaderListener(root));
//
//        sc.addFilter("securityFilter", new DelegatingFilterProxy("springSecurityFilterChain"))
//          .addMappingForUrlPatterns(null, false, "/*");
//		
//	}

}
