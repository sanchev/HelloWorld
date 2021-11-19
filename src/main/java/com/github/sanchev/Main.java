package com.github.sanchev;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Main {

    private static Message message;

    @Autowired
    public Main(Message message) {
        Main.message = message;
    }

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
        System.out.printf("%s \n", message.getText());
    }
}