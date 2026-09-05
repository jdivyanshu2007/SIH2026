package com.SIH.FoodLabel;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@RestController
public class TestImageApiController {
    @GetMapping(value = "/image/{id}", produces = MediaType.IMAGE_JPEG_VALUE)
    public byte[] image(@PathVariable int id) throws IOException {
        Path path;
        if(id == 1) {
            path = Path.of("C:\\Users\\Administrator\\Desktop\\SIH2026\\Assets\\TestImage\\7b6b6da0-6b9e-4103-80b2-114510171673.jpg");
        }
        else if(id == 2) {
            path = Path.of("C:\\Users\\Administrator\\Desktop\\SIH2026\\Assets\\TestImage\\655c9682-ed3b-41e1-b778-88f6c233fa54.jpg");
        }
        else if(id == 3) {
            path = Path.of("C:\\Users\\Administrator\\Desktop\\SIH2026\\Assets\\TestImage\\742e67bc-0c8b-4aff-9da7-17abf36f26b9.jpg");
        }
        else if(id == 4) {
            path = Path.of("C:\\Users\\Administrator\\Desktop\\SIH2026\\Assets\\TestImage\\b28eb35e-244b-477b-a9f2-3f3adf4cf87d.jpg");
        }else{
            throw new IllegalArgumentException("invalid id "+id);
        }
        return Files.readAllBytes(path);
    }
}
