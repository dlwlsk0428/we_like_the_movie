package com.hongik.WLM_4.controller;

import com.hongik.WLM_4.dto.SearchDto;
import com.hongik.WLM_4.service.MemberService;
import com.hongik.WLM_4.service.SearchService;
import com.hongik.WLM_4.util.PageNavigation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    private ServletContext servletContext;

    @Autowired
    private SearchService searchService;

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

//    @GetMapping("/search_movie_results")
//    public String search_result(){
//        return "search/search_movie_results";
//    }

    @GetMapping("/search_movie_results")
    public ModelAndView search_result(@RequestParam Map<String, String> map) throws Exception{
        ModelAndView mav = new ModelAndView();

        String spp = map.get("spp");
        map.put("spp", spp != null ? spp : "10");
        List<SearchDto> list = searchService.listMovie(map);
        PageNavigation pageNavigation = searchService.makePageNavigation(map);
        mav.addObject("movies", list);
        mav.addObject("navigation", pageNavigation);

        mav.setViewName("search/search_movie_results");
//        return "search/search_movie_results";
        return mav;
    }

}
