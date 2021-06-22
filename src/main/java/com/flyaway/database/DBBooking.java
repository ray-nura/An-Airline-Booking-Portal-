package com.flyaway.database;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="booking")
public class DBBooking {

	public DBBooking() {
		super();
	}
	
	@Column(name="book_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	int book_ID;
	
	@Column(name="fname")
	String fname;
	
	@Column(name="lname")
	String lname;
	
	@Column(name="phone")
	String phone;
	
	@Column(name="email")
	String email;
	
	
	@Column(name="flight_date")
	String flight_date;
	
	@Column(name="flight_numb")
	String flight_numb;
	
		
	@Column(name="total_price")
	String total_price;
	
	@Column(name="bank_card")
	String bank_card;

	public int getBook_ID() {
		return book_ID;
	}

	public void setBook_ID(int book_ID) {
		this.book_ID = book_ID;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFlight_date() {
		return flight_date;
	}

	public void setFlight_date(String flight_date) {
		this.flight_date = flight_date;
	}

	public String getFlight_numb() {
		return flight_numb;
	}

	public void setFlight_numb(String flight_numb) {
		this.flight_numb = flight_numb;
	}

	public String getTotal_price() {
		return total_price;
	}

	public void setTotal_price(String total_price) {
		this.total_price = total_price;
	}

	public String getBank_card() {
		return bank_card;
	}

	public void setBank_card(String bank_card) {
		this.bank_card = bank_card;
	}

	public DBBooking(String fname, String lname, String phone, String email, String flight_date,
			String flight_numb, String total_price, String bank_card) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.phone = phone;
		this.email = email;
		this.flight_date = flight_date;
		this.flight_numb = flight_numb;
		this.total_price = total_price;
		this.bank_card = bank_card;
	}

	@Override
	public String toString() {
		return String.format(
				"DBBooking [book_ID=%s, fname=%s, lname=%s, phone=%s, email=%s, flight_date=%s, flight_numb=%s, total_price=%s, bank_card=%s]",
				book_ID, fname, lname, phone, email, flight_date, flight_numb, total_price, bank_card);
	}
	
	
	
	
	
}
