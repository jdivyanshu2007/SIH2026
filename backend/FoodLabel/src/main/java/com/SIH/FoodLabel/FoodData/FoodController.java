package com.SIH.FoodLabel.FoodData;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

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
}
