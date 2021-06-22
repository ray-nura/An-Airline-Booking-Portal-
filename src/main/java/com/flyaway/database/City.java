package com.flyaway.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table(name="city")
	public class City {
		public City() {
			super();
		}
		
		@Column(name="city_ID")
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Id
		int city_ID;
		
		@Column(name="location")
		String location;

		public int getCity_ID() {
			return city_ID;
		}

		public void setCity_ID(int city_ID) {
			this.city_ID = city_ID;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public City( String location) {
			super();
			this.location = location;
		}

		@Override
		public String toString() {
			return String.format("City [city_ID=%s, location=%s]", city_ID, location);
		}
		
		
}
