package com.giggs13.springsecurity.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import({
        PersistenceConfiguration.class,
        McvWebConfiguration.class,
        SecurityConfiguration.class
})
public class MainConfiguration {

}
