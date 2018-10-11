package com.example.demoapp;

import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/")
public class DemoRestController {

    @ResponseStatus(HttpStatus.OK)
    @GetMapping
    public Mono<Greeting> hello() {
        return Mono.just(new Greeting("Hello World"));
    }

    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping
    public Mono<String> hello(@RequestBody @Valid Greeting greeting) {
        return Mono.just("Hello " + greeting.getMessage());
    }
}