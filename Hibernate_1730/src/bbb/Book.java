package bbb;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idBook;
	private String title;
	@ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
	private Author author;

	public Book() {
		// TODO Auto-generated constructor stub
	}

	public Book(String title) {
		this.title = title;
	}

	public int getIdBook() {
		return idBook;
	}

	public void setIdBook(int idBook) {
		this.idBook = idBook;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	@Override
	public String toString() {
		return "Book [idBook=" + idBook + ", title=" + title + "]";
	}

	
	

}
