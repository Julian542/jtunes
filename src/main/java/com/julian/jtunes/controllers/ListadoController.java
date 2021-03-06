package com.julian.jtunes.controllers;

import com.julian.jtunes.domain.Song;
import com.julian.jtunes.services.SongService;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    
    @RequestMapping("/songsbyLabel")
    public String listarPorDiscografica(int discograficaId, Model model){
        List <Song> songs = songService.buscarPorDiscografica(discograficaId);
        model.addAttribute("featuredSongs",songs);
        return "listado";
    }
    
    @RequestMapping("/search")
    public String listarPorNombre(@RequestParam("q") String name, Model model){
        List <Song> songs = songService.buscarPorNombre(name);
        model.addAttribute("featuredSongs", songs);
        return "listado";
    }
}
