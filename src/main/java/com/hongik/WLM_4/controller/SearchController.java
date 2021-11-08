package com.hongik.WLM_4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class SearchController {

    @GetMapping("/search_movie_title")
    public String search_title(){
        return "search/search_movie_title";
    }

    @GetMapping("/search_movie_actor")
    public String search_actor(){
        return "search/search_movie_actor";
    }

    @GetMapping("/search_movie_director")
    public String search_director(){
        return "search/search_movie_director";
    }

    @GetMapping("/search_movie_genre")
    public String search_genre(){
        return "search/search_movie_genre";
    }

    @GetMapping("/search_movie_results")
    public String search_result(){
        return "search/search_movie_results";
    }
}
