package com.example.demo.Dto;

import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserUpdateDTO {
    @Size(min=4,message = "USERNAME_INVALID")
    private String username;
    private String address;
  //  private String fullname;
    private String status;
    private String position;
    private String role;
//    private String phoneNumber;
    private String email;

}
