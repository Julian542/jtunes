package com.julian.jtunes.services;

import com.julian.jtunes.domain.Song;
import com.julian.jtunes.repository.SongRepository;
import java.util.*;
import org.springframework.stereotype.Service;

@Service
public class SongService {
    
    private final SongRepository repository;
    
    public SongService(SongRepository repository){
        this.repository = repository;
    }
    
    public List<Song> findFeaturedSongs(){
        return repository.buscarTodos();
    }
    
    public List<Song> buscarPorDiscografica(int discograficaId){
        return repository.buscarPorDiscografica(discograficaId);
    }
    
    public List<Song> buscarPorNombre(String consulta){
        return repository.buscarPorNombre(consulta);
    }
}
