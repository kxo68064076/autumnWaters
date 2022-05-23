package com.woniu.phoneCity.entity;

import java.util.Date;
import java.util.Objects;

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
	public int hashCode() {
		return Objects.hash(author, bookname, borrowTime, id, returnTime, username);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Record other = (Record) obj;
		return Objects.equals(author, other.author) && Objects.equals(bookname, other.bookname)
				&& Objects.equals(borrowTime, other.borrowTime) && id == other.id
				&& Objects.equals(returnTime, other.returnTime) && Objects.equals(username, other.username);
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
