package com.example.demo.comtroller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author lyx926
 */
@RestController
public class HelloWorld {
    @RequestMapping("")
    public String helloWorld(){
        return "Hello World!";
    }
}
