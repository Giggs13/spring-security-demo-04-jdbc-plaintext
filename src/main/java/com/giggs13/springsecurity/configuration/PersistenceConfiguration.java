package com.giggs13.springsecurity.configuration;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.Objects;

@Configuration
@PropertySource("classpath:persistence-mysql.properties")
@AllArgsConstructor(onConstructor_ = {@Autowired})
public class PersistenceConfiguration {

    private Environment env;

    @Bean
    public DataSource securityDataSource() {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        try {
            dataSource.setDriverClass(env.getProperty("jdbc.driver"));
        } catch (PropertyVetoException ex) {
            throw new RuntimeException(ex);
        }
        dataSource.setJdbcUrl(env.getProperty("jdbc.url"));
        dataSource.setUser(env.getProperty("jdbc.user"));
        dataSource.setPassword(env.getProperty("jdbc.password"));

        dataSource.setInitialPoolSize(getPropertyAsInt("connection.pool.initialPoolSize"));
        dataSource.setMinPoolSize(getPropertyAsInt("connection.pool.minPoolSize"));
        dataSource.setMaxPoolSize(getPropertyAsInt("connection.pool.maxPoolSize"));
        dataSource.setMaxIdleTime(getPropertyAsInt("connection.pool.maxIdleTime"));

        return dataSource;
    }

    private int getPropertyAsInt(String propertyName) {
        return Integer.parseInt(Objects.requireNonNull(env.getProperty(propertyName)));
    }
}
