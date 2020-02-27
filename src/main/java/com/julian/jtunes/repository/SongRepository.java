package com.julian.jtunes.repository;

import com.julian.jtunes.domain.Song;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SongRepository extends JpaRepository<Song, Integer>{
    
}
