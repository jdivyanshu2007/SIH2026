package com.SIH.FoodLabel.FoodData;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
public class FoodController{
    private final FoodRepository foodRepository;

    public FoodController(FoodRepository foodRepository){
        this.foodRepository = foodRepository;
    }
    @PostMapping("/food")
    public String PostFoodData(@RequestBody Food food){
        foodRepository.save(food);
        return "uploaded successfully";
    }
    @GetMapping("/food/{Category}")
    public ResponseEntity<List<Food>> GetFoods(@PathVariable String Category){
        List<Food> foodsList =  foodRepository.findByCategory(Category);
        return ResponseEntity.ok(foodsList);
    }
    @GetMapping("/food/{Category}/{subCategory}/{id}")
    public ResponseEntity<Food> GetFood(@PathVariable String Category,@PathVariable String subCategory,@PathVariable String id){
        if(Category.equals("Solid items")){
            Category = "S";
        }else if(Category.equals("Beverages")){
            Category = "B";
        }else if(Category.equals("Grocery")){
            Category = "B";
        }
        if(subCategory.equals("Milkshake")){
            Category += "M";
        }else if(subCategory.equals("Energy Drink")){
            Category += "E";
        }else if(subCategory.equals("Soft Drink")){
            Category += "S";
        }
        Category += id;
        Food foodsList =  foodRepository.findByRuleId(Category);
        return ResponseEntity.ok(foodsList);
    }
    @GetMapping("/food/image/{Category}/{SubCategory}/{id}")
    public Byte[] ProductImage(@PathVariable String Category , @PathVariable String SubCategory , @PathVariable String id){
        String Imagelocation = Category+"/"+SubCategory+"/"+id;
        Path path = ;
        return Imagelocation;
    }
}
