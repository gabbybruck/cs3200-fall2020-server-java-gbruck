package com.example.cs3200fall2020serverjavagbruck.hello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/api/hello/string")
    public String sayHello() {
      return "hello World";
    }

    @GetMapping("/api/hello/object")
    public Hello sayHelloObject() {
        Hello h = new Hello();
        h.setMessage("Hello from Object!");
        return h;
    }
}
