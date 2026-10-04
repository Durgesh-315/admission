package com.example.employeecrud.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.employeecrud.entity.State;
import com.example.employeecrud.repository.StateRepository;

@Service
public class StateService {

    private final StateRepository stateRepository;

    public StateService(StateRepository stateRepository) {
        this.stateRepository = stateRepository;
    }

    public List<State> getAllStates() {
        return stateRepository.findAllByOrderByValueAsc();
    }
}