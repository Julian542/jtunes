package com.julian.jtunes.controllers;

import com.julian.jtunes.services.SongService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListadoController {
    
    private final SongService songService;
    
    public ListadoController( SongService songService){
        this.songService = songService;
    }
    
    @RequestMapping("/")
    public String listarCanciones(){
        return "listado";
    }
}
