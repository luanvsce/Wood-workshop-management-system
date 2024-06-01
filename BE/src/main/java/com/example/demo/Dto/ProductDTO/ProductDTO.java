package com.example.demo.Dto.ProductDTO;

import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO implements Serializable {
    @NotNull(message = "MUST_REQUIRED")
    private String product_name;
    @NotNull(message = "MUST_REQUIRED")
    private String description;
    @NotNull(message = "MUST_REQUIRED") // Không được để trống
    @Min(value = 0, message = "QUANTITY_INVALID") // Giá trị tối thiểu là 0
    @Digits(integer = 10, fraction = 0, message = "QUANTITY_INVALID") // Chỉ được nhập số nguyên
    private int quantity;
    @NotNull(message = "MUST_REQUIRED") // Không được để trống
    @DecimalMin(value = "0.0", inclusive = false, message = "PRICE_INVALID") // Giá trị tối thiểu lớn hơn 0
    private BigDecimal price;
    private int status_id;

    private String image;
    private int category_id;
    private int type;

}