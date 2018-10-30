package com.berrypay.java.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.berrypay.java.model.Berry;

/**
 * Commentar by : Die
 */

@Repository
public interface BerryRepository extends JpaRepository<Berry, Long> {

}
