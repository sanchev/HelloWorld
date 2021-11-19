package com.github.sanchev;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Message {
    @Value("${message.text}")
    private String text;

    public String getText() {
        return text;
    }
}
