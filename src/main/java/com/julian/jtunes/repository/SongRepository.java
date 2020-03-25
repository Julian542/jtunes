package com.julian.jtunes.repository;

import com.julian.jtunes.domain.Song;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface SongRepository extends JpaRepository<Song, Integer>{
    
    //o en lenguaje JPQL @Query("select s from Song s order by s.nombre)
    @Query(value = "select * from song order by nombre", nativeQuery = true)
    List<Song> buscarTodos();
    
    @Query("from Song s where s.discografica.id = ?1 order by s.nombre")
    List<Song> buscarPorDiscografica(int discograficaId);
    
    @Query("from Song s where s.nombre like %?1% or s.descripcion like %?1% ")
    List<Song> buscarPorNombre(String consulta);
    //otra forma alternativa es con la nomenclatura que reconcoe Spring Data jpa omitiendo el query
    //Spring data lo parsea automaticamente generando el query
    //List <Song> findByNombreContaining(String consulta);
}
