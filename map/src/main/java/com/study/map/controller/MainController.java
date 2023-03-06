package com.study.map.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String index() {
        return "/index";
    }
    
    @GetMapping("/map")
    public String map() {
        return "/map";
    }
}