package com.julian.jtunes.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListadoController {
    
    @RequestMapping("/")
    public String listarCanciones(){
        return "listado";
    }
}
