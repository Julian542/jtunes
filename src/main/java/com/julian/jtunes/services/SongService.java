package com.julian.jtunes.services;

import com.julian.jtunes.domain.Song;
import java.util.*;
import org.springframework.stereotype.Service;

@Service
public class SongService {
    
    public List<Song> findFeaturedSongs(){
        List<Song> songs = new ArrayList();
        //añadimos juegos ficticiamente
        Song song = new Song();
        song.setNombre("Changes");
        song.setDescripcion("By Justin Bieber, from his latest album Changes.");
        song.setImagenUrl("https://jenesaispop.com/wp-content/uploads/2020/01/bieber-changes-1280x720.jpg");
        songs.add(song);
        
        song = new Song();
        song.setNombre("Pumped Up Kicks");
        song.setDescripcion("By Foster The People, from album Torches.");
        song.setImagenUrl("https://img.gigs.guide/unsafe/500x0/smart/filters:quality()/https://i.scdn.co/image/82babf927d68d75373df483836b21aa4bf9446d0");
        songs.add(song);
        
        song = new Song();
        song.setNombre("Sweater Weather");
        song.setDescripcion("By The Neighbourhood, from album I Love You.");
        song.setImagenUrl("https://lastfm.freetls.fastly.net/i/u/500x500/63bd5abec2474e8f9ecff9dd86385e8f.jpg");
        songs.add(song);
        
        song = new Song();
        song.setNombre("Let's Go ft.Ne-Yo");
        song.setDescripcion("By Calvin Harris, from album 18 Months.");
        song.setImagenUrl("https://unika.fm/wp-content/uploads/2017/02/rs_634x951-170224113958-Calvin-Harris.jpg");
        songs.add(song);
        
        //
        return songs;
    }
}
