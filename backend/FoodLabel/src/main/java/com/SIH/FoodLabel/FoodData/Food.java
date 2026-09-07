package com.SIH.FoodLabel.FoodData;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Data
public class Food {
    @Id
    private String ruleId;
    private String itemName;
    private String brandName;
    private String category;
    private String subCategory;
    @Lob
    private String ingredients;
    private Double servingSizeG;
    private Double caloriesKcal;
    private Double carbohydratesG;
    private Double proteinsG;
    private Double totalFatG;
    private Double saturatedFatG;
    private Double transFatG;
    private Double sugarG;
    private Double sodiumMg;
    private Double dietaryFiberG;
    private Double cholesterolMg;
    private Double calciumMg;
    private String vitamin;
    private Double ironMg;
    private String expireData;
    private String preservatives;
    private String additives;
}
