package com.abi.prosper01;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/class")
public class ClassController {

    @GetMapping("/hi/{name}")
    public String sayHi(@PathVariable String name) {
        if (!name.equals("abi")) {
            throw new ClassException("NOT ABI, bye bye...");
        }
        return "Hi, " + name + " Do not say Bye Bye";
    }

    @GetMapping("/generic")
    public String generic() throws Exception{
        throw new Exception("Generic Exception HERE");
    }

}
