package com.crudzaso.MobileFix.entity;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "devices")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Device {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 50)
    @NotBlank(message = "Brand is required")
    private String brand;

    @Column(nullable = false, length = 100)
    @NotBlank(message = "Model is required")
    private String model;

    @Column(unique = true, length = 100)
    private String serialNumber;

    @OneToMany(mappedBy = "device", cascade = CascadeType.ALL)
    private List<RepairOrder> repairOrders = new ArrayList<>();


}
