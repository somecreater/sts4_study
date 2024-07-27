package com.board.domain;

import java.util.Date;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="board")
public class boardentity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long boardnum;
	
	private String title;
	private String content;
	private String writer;
	
	@CreationTimestamp
	private Date registerday;
}
