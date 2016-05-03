package com.iteso.onlinestore.web;

/**
 * Created by luis_ on 03/05/2016.
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;

@Controller

public class OnlineStoreController {

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String index(){
        return "index";
    }
    @RequestMapping(value = "/onlinestore/configureHomePage", method = RequestMethod.GET)
    public String configureHomePage(){
        return "configureHomePage";
    }
    @RequestMapping(value = "/onlinestore/saveUrls", method = RequestMethod.GET)
    public String saveUrls(){
        return "saveUrls";
    }
}
