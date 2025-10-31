package com.crudzaso.MobileFix.entity;

import com.crudzaso.MobileFix.enums.Role;
import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, nullable = false, length = 50)
    @NotBlank(message = "Username is required")
    @Size(min =3,  max = 50, message = "Username must be between 3 and 50 characters")
    private String username;


    @Column(nullable = false)
    @NotBlank(message = "Password is required")
    @Size(min = 8, message = "Password must be at least 8 characters")
    private String password;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private Role role;

    @Column(nullable = false, length = 100)
    @NotBlank(message = "Full name is required")
    private String fullName;

    @Email(message = "Invalid email format")
    @Column(nullable = false, unique = true, length = 100)
    @NotBlank(message = "Email is required")
    private String email;

    @Column(nullable = false)
    private Boolean enabled = true;

    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
    private List<RepairOrder> ordersAsCustomer = new ArrayList<>();

    @OneToMany(mappedBy = "assignedTech")
    private List<RepairOrder> assignedOrders = new ArrayList<>();
 
}
