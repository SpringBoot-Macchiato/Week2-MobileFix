package com.crudzaso.MobileFix.repository;

import com.crudzaso.MobileFix.entity.RepairOrder;
import com.crudzaso.MobileFix.enums.OrderStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepairOrderRepository extends JpaRepository<RepairOrder, Long> {

    List<RepairOrder> findByCustomerId(Long customerId);
    
    List<RepairOrder> findByAssignedTechId(Long techId);

    List<RepairOrder> findByStatus(OrderStatus status);

    List<RepairOrder> findByCustomerIdAndStatus(Long customerId, OrderStatus status);

    @Query("SELECT o FROM RepairOrder o WHERE o.assignedTech.id = :techId")
    List<RepairOrder> findAssignedToTech(@Param("techId") Long techId);

    List<RepairOrder> findAllByOrderByCreatedAtDesc();

    

}
