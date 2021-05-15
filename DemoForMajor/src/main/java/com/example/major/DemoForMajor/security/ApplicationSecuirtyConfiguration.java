package com.example.major.DemoForMajor.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class ApplicationSecuirtyConfiguration  extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication()
		.withUser("Sai")
		.password("123")
		.roles("USER");
		
		auth.inMemoryAuthentication()
		.withUser("The_faculty")
		.password("12345678")
		.roles("USER");
		
		
	}
	@Bean
	public PasswordEncoder getPasswordEncounter()
	{
		return NoOpPasswordEncoder.getInstance();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		 
		http
		.csrf().disable()
		.authorizeRequests()
		.antMatchers("/home").hasRole("USER")
		.antMatchers("/").permitAll()
//		.antMatchers("/*").permitAll()
		.antMatchers("/css/**", "/js/**", "/images/**","/bootstrap/**","/font-awsome/**","/ico/**").permitAll()
		.anyRequest().authenticated()
		.and()
		.formLogin()
		.loginPage("/login").permitAll()
		.and()
		.logout()
//		invalidateHttpSession(true)
//		.clearAuthentication(true)
//		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.logoutUrl("/logout").permitAll().deleteCookies("JSESSIONID");
//		.loginPage("/login").permitAll()
//		.and()
//		.logout()
//		.logoutUrl("/logout").permitAll().deleteCookies("JSESSIONID");
	}
	

}
