package com.woniu.phoneCity.entity;

import lombok.EqualsAndHashCode;

import java.util.Date;

@EqualsAndHashCode
public class Record {
	private int id;
	private String username;
	private String  bookname;
	private String author;
	private Date borrowTime;
	private Date returnTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getBorrowTime() {
		return borrowTime;
	}
	public void setBorrowTime(Date borrowTime) {
		this.borrowTime = borrowTime;
	}
	public Date getReturnTime() {
		return returnTime;
	}
	public void setReturnTime(Date returnTime) {
		this.returnTime = returnTime;
	}


	@Override
	public String toString() {
		return "Record [id=" + id + ", username=" + username + ", bookname=" + bookname + ", author=" + author
				+ ", borrowTime=" + borrowTime + ", returnTime=" + returnTime + "]";
	}
	public Record(int id, String username, String bookname, String author, Date borrowTime, Date returnTime) {
		super();
		this.id = id;
		this.username = username;
		this.bookname = bookname;
		this.author = author;
		this.borrowTime = borrowTime;
		this.returnTime = returnTime;
	}
	
	
}
