package com.board.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.board.domain.boardentity;


@Repository
public interface boardrepository extends JpaRepository<boardentity,Long>{

     List<boardentity> findByTitle(String title);
     List<boardentity> findByContent(String content);
     List<boardentity> findByContentAndTitle(String content, String title);
}
