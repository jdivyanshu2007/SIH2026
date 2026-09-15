package com.SIH.FoodLabel.FoodData;
import org.springframework.http.MediaType;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.Path;
import java.util.List;
import java.nio.file.Files;
import java.io.IOException;

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
        }else if(subCategory.equals("Soft Drink")){
            Category += "S";
        }
        Category += id;
        Food foodsList =  foodRepository.findByRuleId(Category);
        return ResponseEntity.ok(foodsList);
    }
    @GetMapping(value = "/food/image/{Category}/{SubCategory}/{id}" , produces = MediaType.IMAGE_JPEG_VALUE)
    public byte[] ProductImage(@PathVariable String Category , @PathVariable String SubCategory , @PathVariable String id) throws IOException{
        Path path = Paths.get(
                "..",
                "..",
                "Assets",
                "Product",
                Category,
                SubCategory,
                id + ".WEBP"
        );
        return Files.readAllBytes(path);
    }
}
