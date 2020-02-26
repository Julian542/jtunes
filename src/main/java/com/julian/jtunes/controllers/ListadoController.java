package com.julian.jtunes.controllers;

import com.julian.jtunes.domain.Song;
import com.julian.jtunes.services.SongService;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListadoController {
    
    private final SongService songService;
    
    public ListadoController( SongService songService){
        this.songService = songService;
    }
    
    @RequestMapping("/")
    public String listarCanciones(Model model){
        List<Song> featuredSongs = songService.findFeaturedSongs();
        model.addAttribute("featuredSongs", featuredSongs);
        return "listado";
    }
}
