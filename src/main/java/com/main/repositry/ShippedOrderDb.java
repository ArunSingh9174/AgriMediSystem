package com.main.repositry;

import org.springframework.data.repository.CrudRepository;

import com.main.bean.Shipped;

public interface ShippedOrderDb extends CrudRepository<Shipped, Integer>{

}
