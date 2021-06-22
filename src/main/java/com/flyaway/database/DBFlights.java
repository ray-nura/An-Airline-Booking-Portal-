package com.flyaway.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="flights")
public class DBFlights {
	
	public DBFlights() {
		super();
	}
	
	
	@Column(name="flight_ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	int flight_ID;
	
	@Column(name="flight_numb")
	String flight_numb;
	
	@Column(name="airlines")
	String airlines;
	
	@Column(name="departure")
	String departure;
	
	@Column(name="arrival")
	String arrival;
	
	@Column(name="flight_date")
	String flight_date;
	
	@Column(name="flight_time")
	String flight_time;
	
	@Column(name="duration")
	String duration;
	
	@Column(name="price")
	String price;

	public int getFlight_ID() {
		return flight_ID;
	}

	public void setFlight_ID(int flight_ID) {
		this.flight_ID = flight_ID;
	}

	public String getFlight_numb() {
		return flight_numb;
	}

	public void setFlight_numb(String flight_numb) {
		this.flight_numb = flight_numb;
	}

	public String getAirlines() {
		return airlines;
	}

	public void setAirlines(String airlines) {
		this.airlines = airlines;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getArrival() {
		return arrival;
	}

	public void setArrival(String arrival) {
		this.arrival = arrival;
	}

	public String getFlight_date() {
		return flight_date;
	}

	public void setFlight_date(String flight_date) {
		this.flight_date = flight_date;
	}

	public String getFlight_time() {
		return flight_time;
	}

	public void setFlight_time(String flight_time) {
		this.flight_time = flight_time;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public DBFlights( String flight_numb, String airlines, String departure, String arrival,
			String flight_date, String flight_time, String duration, String price) {
		super();
		this.flight_numb = flight_numb;
		this.airlines = airlines;
		this.departure = departure;
		this.arrival = arrival;
		this.flight_date = flight_date;
		this.flight_time = flight_time;
		this.duration = duration;
		this.price = price;
	}

	@Override
	public String toString() {
		return String.format(
				"DBFlights [flight_ID=%s, flight_numb=%s, airlines=%s, departure=%s, arrival=%s, flight_date=%s, flight_time=%s, duration=%s, price=%s]",
				flight_ID, flight_numb, airlines, departure, arrival, flight_date, flight_time, duration, price);
	}

	
	}
