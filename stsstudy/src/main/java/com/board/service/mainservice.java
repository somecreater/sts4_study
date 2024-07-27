package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.domain.boardentity;
import com.board.repository.boardrepository;

@Service
public class mainservice {
	@Autowired
	public boardrepository brdrepo;
	
	public List<boardentity> getboardlist(){
		return brdrepo.findAll();
	};
	
	public List<boardentity> title_searchboardlist(String title){
		List<boardentity> brdlist=brdrepo.findByTitle(title);
		return brdlist;
	}
	
	public List<boardentity> content_searchboardlist(String content){
		List<boardentity> brdlist=brdrepo.findByContent(content);
		return brdlist;
	}
}
