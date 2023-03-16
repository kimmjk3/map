package com.study.map.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.study.map.service.mapService;

@Controller
public class MainController {
	
    @Autowired
    private mapService mapService;

    @GetMapping("/")
    public String index() {
    	
        //List<String> lcbd100lList = mapService.getGeoJsonLcbd100l();
        //model.addAttribute("boardList", boardList);
    	
        return "/index";
    }
    
    @GetMapping("/map")
    public String map() {
        return "/map";
    }
    
    @GetMapping("/map-popup")
    public String mapPopup() {
        return "/map-popup";
    }
}