package com.example.employeecrud.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.employeecrud.entity.State;

public interface StateRepository extends JpaRepository<State, Integer> {

    List<State> findAllByOrderByValueAsc();
}