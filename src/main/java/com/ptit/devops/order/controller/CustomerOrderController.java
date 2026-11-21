package com.ptit.devops.order.controller;

import com.ptit.devops.order.entity.CustomerOrder;
import com.ptit.devops.order.repository.CustomerOrderRepository;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class CustomerOrderController {

    private final CustomerOrderRepository repository;

    public CustomerOrderController(CustomerOrderRepository repository) {
        this.repository = repository;
    }

    /** GET /api/orders - danh sách đơn hàng */
    @GetMapping("/orders")
    public List<CustomerOrder> findAll() {
        return repository.findAll(Sort.by("id"));
    }
}
