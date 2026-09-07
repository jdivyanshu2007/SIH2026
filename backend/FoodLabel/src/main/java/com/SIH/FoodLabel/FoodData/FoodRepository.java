package com.SIH.FoodLabel.FoodData;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FoodRepository extends JpaRepository<Food,Integer> {
    List<Food> findByCategory(String Category);
}
