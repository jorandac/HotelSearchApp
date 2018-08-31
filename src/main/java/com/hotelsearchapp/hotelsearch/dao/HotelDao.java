package com.hotelsearchapp.hotelsearch.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;
import com.hotelsearchapp.hotelsearch.entity.Hotel;

	@Repository
	@Transactional
	public class HotelDao {
		
		@PersistenceContext
		private EntityManager em;

		public List<Hotel> findAll() {
			return em.createQuery("from Hotel", Hotel.class).getResultList();
		}
		
		public Hotel findById(Long id) {
			return em.find(Hotel.class, id);
		}
		
		public List<Hotel> findByCity(String city) {
			return em.createQuery("from Hotel where city = :city order by pricePerNight", Hotel.class)
					.setParameter("city", city)
					.getResultList();
		}

		
	}
	