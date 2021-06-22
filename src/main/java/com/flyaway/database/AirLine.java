package com.flyaway.database;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table(name="airlines")
	public class AirLine {
		public AirLine() {
			super();
		}
		

		@Column(name="airlines_ID")
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Id
		int airlines_ID;
		
		@Column(name="airlines")
		String airlines;

		public int getAirlines_ID() {
			return airlines_ID;
		}

		public void setAirlines_ID(int airlines_ID) {
			this.airlines_ID = airlines_ID;
		}

		public String getAirlines() {
			return airlines;
		}

		public void setAirlines(String airlines) {
			this.airlines = airlines;
		}

		public AirLine(String airlines) {
			super();
			this.airlines = airlines;
		}

		@Override
		public String toString() {
			return String.format("AirLine [airlines_ID=%s, airlines=%s]", airlines_ID, airlines);
		}

}
