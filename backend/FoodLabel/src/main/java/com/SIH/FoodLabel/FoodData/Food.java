package com.SIH.FoodLabel.FoodData;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Data
public class Food {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer ruleId;
    private String itemName;
    private String brandName;
    private String category;
    private String subCategory;
    private String ingredients;
    private String servingSizeG;
    private String caloriesKcal;
    private String carbohydratesG;
    private String proteinsG;
    private String totalFatG;
    private String saturatedFatG;
    private String transFatG;
    private String sugarG;
    private String sodiumMg;
    private String dietaryFiberG;
    private String cholesterolMg;
    private String calciumMg;
    private String vitamin;
    private String ironMg;
    private String expireData;
    private String preservatives;
    private String additives;
}
