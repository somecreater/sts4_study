package com.board.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.board.domain.boardentity;
import com.board.repository.boardrepository;
import com.board.service.mainservice;

@Controller
public class maincontroller {
	
	@Autowired
	private boardrepository brdrepo;
	@Autowired
	private mainservice service;
	
	@GetMapping("/main")
	public String mainpage(Model model) {
		List<boardentity> boardlist=brdrepo.findAll();
		model.addAttribute("boardli", boardlist);
		return "main";
	}
	@GetMapping("/searchtitle")
	@ResponseBody
	public List<boardentity> searchBytitle(@RequestParam String title){
		return service.title_searchboardlist(title);
	}
	@GetMapping("/searchcontent")
	@ResponseBody
	public List<boardentity> searchBycontent(@RequestParam String content){
		return service.content_searchboardlist(content);
	}
	@GetMapping("/board/read/{num}")
	public String boardread(@RequestParam Long num, Model model) {
		boardentity brd=brdrepo.findById(num).get();
		model.addAttribute("board", brd);
		return "board/read/"+num;
	}
	@GetMapping("/board/write")
	public String write() {
		return "board/write";
	}
	@PostMapping("/board/writeaction")
	public String writeboard(boardentity board) {
		brdrepo.save(board);
		return "redirect:board";
	}
	@GetMapping("/board/update/{num}")
	public String update(@RequestParam Long num, Model model) {
		boardentity brd=brdrepo.findById(num).get();
		model.addAttribute("board", brd);
		return "board/update/"+num;
	}
	@PostMapping("/board/updateaction")
	public String updateboard(boardentity board) {
		brdrepo.save(board);
		return "redirect:board";
	}

}
