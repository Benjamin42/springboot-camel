package com.amundi.msg.rest;

import org.apache.camel.CamelContext;
import org.apache.camel.Route;
import org.apache.camel.ServiceStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RouteResource {


    @GetMapping("/routes/{id}")
    String getStatus(@PathVariable String id) {
        return "";
    }

    @GetMapping("/routes/remove/{id}")
    String removeRoute(@PathVariable String id) throws Exception {

        return "OK";
    }
}
