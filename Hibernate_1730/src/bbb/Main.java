package bbb;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

public class Main {
	public static void main(String[] args) {

		// SessionFactory factory = new
		// Configuration().addAnnotatedClass(Author.class).addAnnotatedClass(Book.class)
		// .configure().buildSessionFactory();

		SessionFactory factory = new Configuration().configure().buildSessionFactory();
		Session session = factory.openSession();
		session.getTransaction().begin();
//		Author author = new Author("pora");
//		List<Book> books = new ArrayList<>();
//		books.add(new Book("bukvar"));
//		books.add(new Book("bukvar2"));
//		author.setBooks(books);
//		session.persist(author);
		
//		Book book = session.get(Book.class, 1);
//		book.setAuthor(session.get(Author.class, 1));
//		session.update(book);
		
		
		System.out.println(session.createQuery("from Author").list());
		System.out.println(session.createQuery("select czxc.name from Author czxc").list());
System.out.println(session.createCriteria(Author.class).add(Restrictions.between("idAuthor", 1, 2)).list());
		Criteria criteria=session.createCriteria(Book.class);
		Criterion criterion = Restrictions.between("idBook", 1, 2);
		criteria.add(criterion);
		List<Book> books =criteria.list();
		System.out.println(books);
		
		
		

		session.getTransaction().commit();

		session.close();

		factory.close();

	}
}
